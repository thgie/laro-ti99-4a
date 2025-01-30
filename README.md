# Laro's TI-99/4A Archive

This repository holds dump files, paratextual material and contextual information of Laro's personal TI-99/4A code archive, dating around 1982. The dumps were created by digitizing the original data cassettes, decoding the recordings, and extracting the BASIC source code.


## Team

- Laro Schatzer, video game developer
- Robin François, video game archivist
- Ralph Michel, time-based media conservator
- Adrian Demleitner, digital humanities scholar


## Content
- `dumps` contains the [extraced](#Extraction-Process) data and BASIC files, as well as one example of a re-encoded data file was `.wav`
- `tapes` holds information and documentation regarding the source material
    - `tapes/photos` exposes photos of the front, back, side and, most importantly, the sleeve of all five tapes


## Copyright

Laro Schatzer is holding the intellectual property of the code and paratextual material published in this repository. Contextual information is released under [GPL-3.0](LICENSE)


## Extraction Process

- Digitize cassettes to 16-bit signed wav

```bash
ffmpeg -i TI_99_4A_NR-OFF_001_sideA.bwf -vn -acodec pcm_s16le -ar 44100 -ac 2 TI_99_4A_NR-OFF_0051_sideA.wav
```

- Use  [dimhoff/ti99_4a_tape_decode](https://github.com/dimhoff/ti99_4a_tape_decode) to extract .dat files from audio recordings. On error, use Audacity as a means to remove the corrupted part.
- Use the following bash line to bulk dump [[BASIC]] code from the .dat files.

```bash
for i in TI_99_4A_NR-OFF_001_sideA/*.dat; do ti99_4a_list_basic.py "$i" > "${i/dat/bas}"; done
```

- To use the dump in an emulator, the .dat files need to be converted back to a proper audio recording.

```bash
ti99_4a_tape_encode.py TI_99_4A_NR-OFF_001_sideA/001.dat chunks/TI_99_4A_NR-OFF_001_sideA/001.wav
```

- Control the re-encoded file for example with [JS99'er](https://js99er.net/), a JS-based emulator. Chromium works better then Firefox. Chose the [[Basic]] version. Load the .wav file under Tapes. Then initiate the loading process with.

```basic
OLD CS1
RUN
```

## Analysis
The notes contain automated basic analysis of some of the programs and games.

- [ASCII ski](notes/001_sideA_001.md)
- [Text-based dungeon crawler](notes/003_sideB_018.md)
- [Star Trek space battle](notes/004_sideA_007.md)

The analysis was done with Claude 3.5 Sonnet and the prompt was `What do you make of this code? Can you also create a mermaid.js flow chart of the program flow and add the line numbers to the nodes?`.

## Todo

- [x] Dump rest of the cassettes
- [x] Scan and add cassette sleeves
- [ ] Create mapping of cassette sleeve indexes and dumped files
- [ ] Document integrity of archive
- [ ] Add more contextual information
