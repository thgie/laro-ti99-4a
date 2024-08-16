# Laro's TI-99/4A Archive

This repository holds dump files, paratextual material and contextual information of Laro's personal TI-99/4A code archive, dating around 1982. The dumps were created by digitizing the original data cassettes, decoding the recordings, and extracting the BASIC source code.


## Team

- Laro Schatzer, video game developer
- Robin François, video game archivist
- Ralph Michel, time-based media conservator
- Adrian Demleitner, digital humanities scholar


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

## Todo

- [x] Dump rest of the cassettes
- [ ] Scan and add cassette sleeves
- [ ] Create mapping of cassette sleeve indexes and dumped files
- [ ] Document integrity of archive
- [ ] Add more contextual information
