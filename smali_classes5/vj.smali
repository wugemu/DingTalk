.class public final Lvj;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvj$i;,
        Lvj$a;,
        Lvj$d;,
        Lvj$b;,
        Lvj$c;,
        Lvj$f;,
        Lvj$g;,
        Lvj$e;,
        Lvj$h;
    }
.end annotation


# static fields
.field public static final a:[[Ljava/lang/String;

.field private static final b:I

.field private static final c:I

.field private static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x48

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 59
    const/16 v0, 0x34f

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v1, v5

    const-string/jumbo v2, "application/octet-stream"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "123"

    aput-object v2, v1, v5

    const-string/jumbo v2, "application/vnd.lotus-1-2-3"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "323"

    aput-object v2, v1, v5

    const-string/jumbo v2, "text/h323"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "3dml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.in3d.3dml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "3g2"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/3gpp2"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "3gp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/3gpp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "aab"

    aput-object v2, v1, v5

    const-string/jumbo v2, "application/x-authorware-bin"

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "aac"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/x-aac"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "aam"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-authorware-map"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "a"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "aas"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-authorware-seg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "abw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-abiword"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "acc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.americandynamics.acc"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ace"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-ace-compressed"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "acu"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.acucobol"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "acutc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.acucorp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "acx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/internet-property-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "adp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/adpcm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "aep"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.audiograph"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "afm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-font-type1"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "afp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ibm.modcap"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ai"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/postscript"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "aif"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/x-aiff"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "aifc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/x-aiff"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "aiff"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/x-aiff"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "air"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.adobe.air-application-installer-package+zip"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ami"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.amiga.ami"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "apk"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.android.package-archive"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "application"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-ms-application"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "apr"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.lotus-approach"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "asc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/pgp-signature"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "asf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-ms-asf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "asm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-asm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "aso"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.accpac.simply.aso"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "asr"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-ms-asf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "asx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-ms-asf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "atc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.acucorp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "atom"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/atom+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "atomcat"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/atomcat+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "atomsvc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/atomsvc+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "atx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.antix.game-component"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "au"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/basic"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "avi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-msvideo"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "aw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/applixware"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "axs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/olescript"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "azf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.airzip.filesecure.azf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "azs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.airzip.filesecure.azs"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "azw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.amazon.ebook"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bas"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bat"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msdownload"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bcpio"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-bcpio"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bdf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-font-bdf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bdm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.syncml.dm+wbxml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bh2"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fujitsu.oasysprs"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bin"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bmi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.bmi"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bmp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/bmp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "book"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.framemaker"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "box"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.previewsystems.box"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "boz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-bzip2"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bpk"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "btif"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/prs.btif"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bz2"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-bzip2"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-bzip"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "c4d"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.clonk.c4group"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "c4f"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.clonk.c4group"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "c4g"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.clonk.c4group"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "c4p"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.clonk.c4group"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "c4u"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.clonk.c4group"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cab"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-cab-compressed"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "car"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.curl.car"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cat"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-pki.seccat"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "cct"

    aput-object v2, v1, v5

    const-string/jumbo v2, "application/x-director"

    aput-object v2, v1, v4

    aput-object v1, v0, v8

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-c"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ccxml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/ccxml+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cdbcmsg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.contact.cmsg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cdf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-cdf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cdkey"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mediastation.cdkey"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cdx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "chemical/x-cdx"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cdxml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.chemdraw+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cdy"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.cinderella"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cer"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-x509-ca-cert"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cgm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/cgm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "chat"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-chat"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "chm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-htmlhelp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "chrt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kde.kchart"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cif"

    aput-object v3, v2, v5

    const-string/jumbo v3, "chemical/x-cif"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cii"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.anser-web-certificate-issue-initiation"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cla"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.claymore"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "class"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/java-vm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "clkk"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.crick.clicker.keyboard"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "clkp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.crick.clicker.palette"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "clkt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.crick.clicker.template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "clkw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.crick.clicker.wordbank"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "clkx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.crick.clicker"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "clp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msclip"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cmc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.cosmocaller"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cmdf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "chemical/x-cmdf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "chemical/x-cml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cmp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.yellowriver-custom-menu"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cmx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-cmx"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cod"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.rim.cod"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "com"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msdownload"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "conf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cpio"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-cpio"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cpp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-c"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cpt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/mac-compactpro"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "crd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-mscardfile"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "crl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/pkix-crl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "crt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-x509-ca-cert"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "csh"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-csh"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "csml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "chemical/x-csml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "csp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.commonspace"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "css"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/css"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cst"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-director"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "csv"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/csv"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "c"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cu"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/cu-seeme"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "curl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.curl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cww"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/prs.cww"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cxt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-director"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cxx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-c"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "daf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mobius.daf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dataless"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fdsn.seed"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "davmount"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/davmount+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dcr"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-director"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dcurl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.curl.dcurl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dd2"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oma.dd2+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ddd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fujixerox.ddd"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "deb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-debian-package"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "def"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "deploy"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "der"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-x509-ca-cert"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dfac"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.dreamfactory"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dic"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-c"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "diff"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dir"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-director"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dis"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mobius.dis"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dist"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "distz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "djv"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.djvu"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "djvu"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.djvu"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dll"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msdownload"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dmg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dms"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dna"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.dna"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "doc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/msword"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "docm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-word.document.macroenabled.12"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "docx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dot"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/msword"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dotm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-word.template.macroenabled.12"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dotx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.osgi.dp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dpg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.dpgraph"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dsc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/prs.lines.tag"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dtb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-dtbook+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dtd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xml-dtd"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dts"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/vnd.dts"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dtshd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/vnd.dts.hd"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dump"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dvi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-dvi"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dwf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "model/vnd.dwf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dwg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.dwg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dxf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.dxf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dxp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.spotfire.dxp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dxr"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-director"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ecelp4800"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/vnd.nuera.ecelp4800"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ecelp7470"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/vnd.nuera.ecelp7470"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ecelp9600"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/vnd.nuera.ecelp9600"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ecma"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/ecmascript"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "edm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.novadigm.edm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "edx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.novadigm.edx"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "efif"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.picsel"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ei6"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.pg.osasli"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "elc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "eml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "message/rfc822"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "emma"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/emma+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "eol"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/vnd.digital-winds"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "eot"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-fontobject"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "eps"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/postscript"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "epub"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/epub+zip"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "es3"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.eszigno3+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "esf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.epson.esf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "et3"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.eszigno3+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "etx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-setext"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "evy"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/envoy"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "exe"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ext"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.novadigm.ext"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ez2"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ezpix-album"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ez3"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ezpix-package"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ez"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/andrew-inset"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "f4v"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-f4v"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "f77"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-fortran"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "f90"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-fortran"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fbs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.fastbidsheet"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fdf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fdf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fe_launch"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.denovo.fcselayout-link"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fg5"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fujitsu.oasysgp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fgd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-director"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fh4"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-freehand"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fh5"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-freehand"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fh7"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-freehand"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fhc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-freehand"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fh"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-freehand"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fif"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/fractals"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fig"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-xfig"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fli"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-fli"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "flo"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.micrografx.flo"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "flr"

    aput-object v3, v2, v5

    const-string/jumbo v3, "x-world/x-vrml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "flv"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-flv"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "flw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kde.kivio"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "flx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.fmi.flexstor"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fly"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.fly"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.framemaker"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fnc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.frogans.fnc"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "for"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-fortran"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fpx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.fpx"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "frame"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.framemaker"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fsc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fsc.weblaunch"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fst"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.fst"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ftc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fluxtime.clip"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "f"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-fortran"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fti"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.anser-web-funds-transfer-initiation"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fvt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/vnd.fvt"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "fzs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fuzzysheet"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "g3"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/g3fax"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gac"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.groove-account"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gdl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "model/vnd.gdl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "geo"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.dynageo"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gex"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.geometry-explorer"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ggb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.geogebra.file"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ggt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.geogebra.tool"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ghf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.groove-help"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gif"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/gif"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gim"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.groove-identity-message"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gmx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.gmx"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gnumeric"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-gnumeric"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gph"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.flographit"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gqf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.grafeq"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gqs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.grafeq"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gram"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/srgs"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gre"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.geometry-explorer"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "grv"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.groove-injector"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "grxml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/srgs+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gsf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-font-ghostscript"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gtar"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-gtar"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gtm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.groove-tool-message"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gtw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "model/vnd.gtw"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gv"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.graphviz"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-gzip"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "h261"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/h261"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "h263"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/h263"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "h264"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/h264"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hbci"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.hbci"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hdf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-hdf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hh"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-c"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hlp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/winhlp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hpgl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.hp-hpgl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hpid"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.hp-hpid"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hps"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.hp-hps"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hqx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/mac-binhex40"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hta"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/hta"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "htc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-component"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "h"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "htke"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kenameaapp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "html"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/html"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "htm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/html"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "htt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/webviewhtml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hvd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.yamaha.hv-dic"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hvp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.yamaha.hv-voice"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hvs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.yamaha.hv-script"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "icc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.iccprofile"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ice"

    aput-object v3, v2, v5

    const-string/jumbo v3, "x-conference/x-cooltalk"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "icm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.iccprofile"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ico"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-icon"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ics"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/calendar"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ief"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/ief"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ifb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/calendar"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ifm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.shana.informed.formdata"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "iges"

    aput-object v3, v2, v5

    const-string/jumbo v3, "model/iges"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "igl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.igloader"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "igs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "model/iges"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "igx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.micrografx.igx"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "iif"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.shana.informed.interchange"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "iii"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-iphone"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "imp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.accpac.simply.imp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ims"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-ims"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ins"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-internet-signup"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "in"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ipk"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.shana.informed.package"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "irm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ibm.rights-management"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "irp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.irepository.package+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "iso"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "isp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-internet-signup"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "itp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.shana.informed.formtemplate"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ivp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.immervision-ivp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ivu"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.immervision-ivu"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "jad"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.sun.j2me.app-descriptor"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "jam"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.jam"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "jar"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/java-archive"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "java"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-java-source"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "jfif"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/pipeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "jisp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.jisp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "jlt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.hp-jlyt"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "jnlp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-java-jnlp-file"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "joda"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.joost.joda-archive"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "jpeg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/jpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "jpe"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/jpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "jpg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/jpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "jpgm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/jpm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "jpgv"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/jpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "jpm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/jpm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "js"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-javascript"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "json"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/json"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "kar"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/midi"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "karbon"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kde.karbon"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "kfo"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kde.kformula"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "kia"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kidspiration"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "kil"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-killustrator"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "kml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.google-earth.kml+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x140

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "kmz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.google-earth.kmz"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x141

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "kne"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kinar"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "knp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kinar"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x143

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "kon"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kde.kontour"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "kpr"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kde.kpresenter"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x145

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "kpt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kde.kpresenter"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ksh"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x147

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ksp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kde.kspread"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ktr"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kahootz"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x149

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ktz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kahootz"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "kwd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kde.kword"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "kwt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kde.kword"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "latex"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-latex"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lbd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.llamagraphics.life-balance.desktop"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lbe"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.llamagraphics.life-balance.exchange+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "les"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.hhe.lesson-player"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x150

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lha"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x151

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "link66"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.route66.link66+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x152

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "list3820"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ibm.modcap"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x153

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "listafp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ibm.modcap"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x154

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "list"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x155

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "log"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x156

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lostxml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/lost+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x157

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lrf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x158

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lrm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-lrm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x159

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lsf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-la-asf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lsx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-la-asf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ltf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.frogans.ltf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lvp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/vnd.lucent.voice"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lwp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.lotus-wordpro"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lzh"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "m13"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msmediaview"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x160

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "m14"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msmediaview"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x161

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "m1v"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/mpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x162

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "m2a"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/mpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x163

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "m2v"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/mpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x164

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "m3a"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/mpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x165

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "m3u"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/x-mpegurl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x166

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "m4u"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/vnd.mpegurl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x167

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "m4v"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-m4v"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x168

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ma"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/mathematica"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x169

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mag"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ecowin.chart"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "maker"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.framemaker"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "man"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/troff"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mathml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/mathml+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/mathematica"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mbk"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mobius.mbk"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mbox"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/mbox"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x170

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mc1"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.medcalcdata"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x171

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mcd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mcd"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x172

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mcurl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.curl.mcurl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x173

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mdb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msaccess"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x174

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mdi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.ms-modi"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x175

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mesh"

    aput-object v3, v2, v5

    const-string/jumbo v3, "model/mesh"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x176

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "me"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/troff"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x177

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mfm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mfmp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x178

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mgz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.proteus.magazine"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x179

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mht"

    aput-object v3, v2, v5

    const-string/jumbo v3, "message/rfc822"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mhtml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "message/rfc822"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mid"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/midi"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "midi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/midi"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mif"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mif"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mime"

    aput-object v3, v2, v5

    const-string/jumbo v3, "message/rfc822"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mj2"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/mj2"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x180

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mjp2"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/mj2"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x181

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mlp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.dolby.mlp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x182

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mmd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.chipnuts.karaoke-mmd"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x183

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mmf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.smaf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x184

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mmr"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.fujixerox.edmics-mmr"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x185

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mny"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msmoney"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x186

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mobi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-mobipocket-ebook"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x187

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "movie"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-sgi-movie"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x188

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mov"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/quicktime"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x189

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mp2a"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/mpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mp2"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/mpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mp3"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/mpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mp4a"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/mp4"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mp4s"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/mp4"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mp4"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/mp4"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mp4v"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/mp4"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x190

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpa"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/mpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x191

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mophun.certificate"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x192

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpeg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/mpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x193

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpe"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/mpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x194

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpg4"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/mp4"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x195

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpga"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/mpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x196

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/mpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x197

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpkg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.apple.installer+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x198

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.blueice.multipass"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x199

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpn"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mophun.application"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-project"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-project"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpv2"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/mpeg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mpy"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ibm.minipay"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mqy"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mobius.mqy"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mrc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/marc"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mscml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/mediaservercontrol+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mseed"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fdsn.mseed"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mseq"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mseq"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "msf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.epson.msf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "msh"

    aput-object v3, v2, v5

    const-string/jumbo v3, "model/mesh"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "msi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msdownload"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ms"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/troff"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "msty"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.muvee.style"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mts"

    aput-object v3, v2, v5

    const-string/jumbo v3, "model/vnd.mts"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mus"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.musician"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "musicxml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.recordare.musicxml+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mvb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msmediaview"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mxf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/mxf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mxl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.recordare.musicxml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mxml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xv+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mxs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.triscape.mxs"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mxu"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/vnd.mpegurl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "nb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/mathematica"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "nc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-netcdf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ncx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-dtbncx+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "n-gage"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.nokia.n-gage.symbian.install"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ngdat"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.nokia.n-gage.data"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "nlu"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.neurolanguage.nlu"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "nml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.enliven"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "nnd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.noblenet-directory"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "nns"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.noblenet-sealer"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "nnw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.noblenet-web"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "npx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.net-fpx"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "nsf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.lotus-notes"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "nws"

    aput-object v3, v2, v5

    const-string/jumbo v3, "message/rfc822"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oa2"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fujitsu.oasys2"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oa3"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fujitsu.oasys3"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "o"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oas"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fujitsu.oasys"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "obd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msbinder"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "obj"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oda"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/oda"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "odb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.database"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "odc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.chart"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "odf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.formula"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1c8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "odft"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.formula-template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "odg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.graphics"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1ca

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "odi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.image"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "odp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.presentation"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1cc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ods"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.spreadsheet"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1cd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "odt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.text"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1ce

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oga"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/ogg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ogg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/ogg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1d0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ogv"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/ogg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ogx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/ogg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1d2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "onepkg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/onenote"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "onetmp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/onenote"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1d4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "onetoc2"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/onenote"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "onetoc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/onenote"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1d6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "opf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/oebps-package+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oprc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.palm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1d8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "org"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.lotus-organizer"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "osf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.yamaha.openscoreformat"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1da

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "osfpvg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.yamaha.openscoreformat.osfpvg+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "otc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.chart-template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1dc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "otf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-font-otf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "otg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.graphics-template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1de

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oth"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.text-web"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1df

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oti"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.image-template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1e0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "otm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.text-master"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "otp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.presentation-template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1e2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ots"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.spreadsheet-template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ott"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.oasis.opendocument.text-template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1e4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oxt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.openofficeorg.extension"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "p10"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/pkcs10"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1e6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "p12"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-pkcs12"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "p7b"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-pkcs7-certificates"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1e8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "p7c"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-pkcs7-mime"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "p7m"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-pkcs7-mime"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1ea

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "p7r"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-pkcs7-certreqresp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1eb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "p7s"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-pkcs7-signature"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1ec

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pas"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-pascal"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pbd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.powerbuilder6"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1ee

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pbm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-portable-bitmap"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pcf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-font-pcf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1f0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pcl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.hp-pcl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1f1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pclxl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.hp-pclxl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1f2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pct"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-pict"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1f3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pcurl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.curl.pcurl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1f4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pcx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-pcx"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1f5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pdb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.palm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1f6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pdf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/pdf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1f7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pfa"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-font-type1"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1f8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pfb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-font-type1"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1f9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pfm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-font-type1"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1fa

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pfr"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/font-tdpfr"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1fb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pfx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-pkcs12"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1fc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pgm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-portable-graymap"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1fd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pgn"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-chess-pgn"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1fe

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pgp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/pgp-encrypted"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1ff

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pic"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-pict"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x200

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pkg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x201

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pki"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/pkixcmp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x202

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pkipath"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/pkix-pkipath"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x203

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pko"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/ynd.ms-pkipko"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x204

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "plb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.3gpp.pic-bw-large"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x205

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "plc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mobius.plc"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x206

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "plf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.pocketlearn"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x207

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pls"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/pls+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x208

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x209

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pma"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-perfmon"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x20a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pmc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-perfmon"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x20b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-perfmon"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x20c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pmr"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-perfmon"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x20d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pmw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-perfmon"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x20e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "png"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/png"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x20f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pnm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-portable-anymap"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x210

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "portpkg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.macports.portpkg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x211

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pot,"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x212

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pot"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x213

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "potm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-powerpoint.template.macroenabled.12"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x214

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "potx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.openxmlformats-officedocument.presentationml.template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x215

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ppa"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x216

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ppam"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-powerpoint.addin.macroenabled.12"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x217

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ppd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.cups-ppd"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x218

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ppm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-portable-pixmap"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x219

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pps"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x21a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ppsm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-powerpoint.slideshow.macroenabled.12"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x21b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ppsx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x21c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ppt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x21d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pptm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-powerpoint.presentation.macroenabled.12"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x21e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pptx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x21f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pqa"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.palm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x220

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "prc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-mobipocket-ebook"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x221

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pre"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.lotus-freelance"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x222

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "prf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/pics-rules"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x223

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ps"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/postscript"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x224

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "psb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.3gpp.pic-bw-small"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x225

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "psd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.adobe.photoshop"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x226

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "psf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-font-linux-psf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x227

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "p"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-pascal"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x228

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ptid"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.pvi.ptid1"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x229

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pub"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-mspublisher"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x22a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pvb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.3gpp.pic-bw-var"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x22b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pwn"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.3m.post-it-notes"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x22c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pwz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x22d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pya"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/vnd.ms-playready.media.pya"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x22e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pyc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-python-code"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x22f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pyo"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-python-code"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x230

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "py"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-python"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x231

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pyv"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/vnd.ms-playready.media.pyv"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x232

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "qam"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.epson.quickanime"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x233

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "qbo"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.intu.qbo"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x234

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "qfx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.intu.qfx"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x235

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "qps"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.publishare-delta-tree"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x236

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "qt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/quicktime"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x237

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "qwd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.quark.quarkxpress"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x238

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "qwt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.quark.quarkxpress"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x239

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "qxb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.quark.quarkxpress"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x23a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "qxd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.quark.quarkxpress"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x23b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "qxl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.quark.quarkxpress"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x23c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "qxt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.quark.quarkxpress"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x23d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ra"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/x-pn-realaudio"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x23e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ram"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/x-pn-realaudio"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x23f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rar"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-rar-compressed"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x240

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ras"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-cmu-raster"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x241

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rcprofile"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ipunplugged.rcprofile"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x242

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rdf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/rdf+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x243

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rdz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.data-vision.rdz"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x244

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rep"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.businessobjects"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x245

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "res"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-dtbresource+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x246

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rgb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-rgb"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x247

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rif"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/reginfo+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x248

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/resource-lists+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x249

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rlc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.fujixerox.edmics-rlc"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x24a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rld"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/resource-lists-diff+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x24b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.rn-realmedia"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x24c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rmi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/midi"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x24d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rmp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/x-pn-realaudio-plugin"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x24e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rms"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.jcp.javame.midlet-rms"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x24f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rnc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/relax-ng-compact-syntax"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x250

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "roff"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/troff"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x251

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rpm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-rpm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x252

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rpss"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.nokia.radio-presets"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x253

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rpst"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.nokia.radio-preset"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x254

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rq"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/sparql-query"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x255

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/rls-services+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x256

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rsd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/rsd+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x257

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rss"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/rss+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x258

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rtf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/rtf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x259

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rtx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/richtext"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x25a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "saf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.yamaha.smaf-audio"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x25b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sbml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/sbml+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x25c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ibm.secure-container"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x25d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "scd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msschedule"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x25e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "scm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.lotus-screencam"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x25f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "scq"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/scvp-cv-request"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x260

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "scs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/scvp-cv-response"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x261

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sct"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/scriptlet"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x262

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "scurl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.curl.scurl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x263

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sda"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.stardivision.draw"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x264

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sdc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.stardivision.calc"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x265

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sdd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.stardivision.impress"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x266

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sdkd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.solent.sdkm+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x267

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sdkm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.solent.sdkm+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x268

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sdp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/sdp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x269

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sdw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.stardivision.writer"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x26a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "see"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.seemail"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x26b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "seed"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fdsn.seed"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x26c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sema"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.sema"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x26d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "semd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.semd"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x26e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "semf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.semf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x26f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ser"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/java-serialized-object"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x270

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "setpay"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/set-payment-initiation"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x271

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "setreg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/set-registration-initiation"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x272

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sfd-hdstx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.hydrostatix.sof-data"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x273

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sfs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.spotfire.sfs"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x274

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sgl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.stardivision.writer-global"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x275

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sgml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/sgml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x276

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sgm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/sgml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x277

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sh"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-sh"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x278

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "shar"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-shar"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x279

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "shf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/shf+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x27a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sic"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.wap.sic"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x27b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sig"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/pgp-signature"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x27c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "silo"

    aput-object v3, v2, v5

    const-string/jumbo v3, "model/mesh"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x27d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sis"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.symbian.install"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x27e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sisx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.symbian.install"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x27f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sit"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-stuffit"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x280

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "si"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.wap.si"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x281

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sitx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-stuffitx"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x282

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "skd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.koan"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x283

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "skm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.koan"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x284

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "skp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.koan"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x285

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "skt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.koan"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x286

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "slc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.wap.slc"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x287

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sldm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-powerpoint.slide.macroenabled.12"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x288

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sldx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.openxmlformats-officedocument.presentationml.slide"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x289

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "slt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.epson.salt"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x28a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.wap.sl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x28b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "smf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.stardivision.math"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x28c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "smi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/smil+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x28d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "smil"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/smil+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x28e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "snd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/basic"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x28f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "snf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-font-snf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x290

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "so"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/octet-stream"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x291

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "spc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-pkcs7-certificates"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x292

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "spf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.yamaha.smaf-phrase"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x293

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "spl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-futuresplash"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x294

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "spot"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.in3d.spot"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x295

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "spp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/scvp-vp-response"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x296

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "spq"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/scvp-vp-request"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x297

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "spx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/ogg"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x298

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "src"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-wais-source"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x299

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "srx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/sparql-results+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x29a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sse"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.kodak-descriptor"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x29b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ssf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.epson.ssf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x29c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ssml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/ssml+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x29d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sst"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-pkicertstore"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x29e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "stc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.sun.xml.calc.template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x29f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "std"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.sun.xml.draw.template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2a0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "s"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-asm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2a1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "stf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.wt.stf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2a2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sti"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.sun.xml.impress.template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2a3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "stk"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/hyperstudio"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2a4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "stl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-pki.stl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2a5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "stm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/html"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2a6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "str"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.pg.format"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2a7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "stw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.sun.xml.writer.template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2a8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sus"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.sus-calendar"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2a9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "susp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.sus-calendar"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2aa

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sv4cpio"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-sv4cpio"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2ab

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sv4crc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-sv4crc"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2ac

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "svd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.svd"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2ad

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "svg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/svg+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2ae

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "svgz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/svg+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2af

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "swa"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-director"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2b0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "swf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-shockwave-flash"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2b1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "swi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.arastra.swi"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2b2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sxc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.sun.xml.calc"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2b3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sxd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.sun.xml.draw"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2b4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sxg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.sun.xml.writer.global"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2b5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sxi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.sun.xml.impress"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2b6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sxm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.sun.xml.math"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2b7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sxw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.sun.xml.writer"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2b8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tao"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.tao.intent-module-archive"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2b9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "t"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-troff"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2ba

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tar"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-tar"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2bb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tcap"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.3gpp2.tcap"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2bc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tcl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-tcl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2bd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "teacher"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.smart.teacher"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2be

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tex"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-tex"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2bf

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "texi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-texinfo"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2c0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "texinfo"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-texinfo"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2c1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "text"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2c2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tfm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-tex-tfm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2c3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tgz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-gzip"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2c4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tiff"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/tiff"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2c5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tif"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/tiff"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2c6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tmo"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.tmobile-livetv"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2c7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "torrent"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-bittorrent"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2c8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tpl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.groove-tool-template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2c9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tpt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.trid.tpt"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2ca

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tra"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.trueapp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2cb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "trm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msterminal"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2cc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tr"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/troff"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2cd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tsv"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/tab-separated-values"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2ce

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ttc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-font-ttf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2cf

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ttf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-font-ttf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2d0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "twd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.simtech-mindmapper"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2d1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "twds"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.simtech-mindmapper"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2d2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "txd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.genomatix.tuxedo"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2d3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "txf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mobius.txf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2d4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "txt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/plain"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2d5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "u32"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-authorware-bin"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2d6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "udeb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-debian-package"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2d7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ufd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ufdl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2d8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ufdl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ufdl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2d9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uls"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/iuls"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2da

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "umj"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.umajin"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2db

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "unityweb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.unity"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2dc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uoml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.uoml+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2dd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uris"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/uri-list"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2de

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uri"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/uri-list"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2df

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "urls"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/uri-list"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2e0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ustar"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-ustar"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2e1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "utz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.uiq.theme"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2e2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uu"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-uuencode"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2e3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vcd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-cdlink"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2e4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vcf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-vcard"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2e5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vcg"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.groove-vcard"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2e6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vcs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/x-vcalendar"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2e7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vcx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.vcx"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2e8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vis"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.visionary"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2e9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "viv"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/vnd.vivo"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2ea

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vor"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.stardivision.writer"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2eb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vox"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-authorware-bin"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2ec

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vrml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "x-world/x-vrml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2ed

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vsd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.visio"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2ee

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vsf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.vsf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2ef

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vss"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.visio"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2f0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vst"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.visio"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2f1

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vsw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.visio"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2f2

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vtu"

    aput-object v3, v2, v5

    const-string/jumbo v3, "model/vnd.vtu"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2f3

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "vxml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/voicexml+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2f4

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "w3d"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-director"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2f5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wad"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-doom"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2f6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wav"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/x-wav"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2f7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wax"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/x-ms-wax"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2f8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wbmp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.wap.wbmp"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2f9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wbs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.criticaltools.wbs+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2fa

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wbxml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.wap.wbxml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2fb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wcm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-works"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2fc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wdb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-works"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2fd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wiz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/msword"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2fe

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wks"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-works"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x2ff

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wma"

    aput-object v3, v2, v5

    const-string/jumbo v3, "audio/x-ms-wma"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x300

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wmd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-ms-wmd"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x301

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wmf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-msmetafile"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x302

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wmlc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.wap.wmlc"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x303

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wmlsc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.wap.wmlscriptc"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x304

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wmls"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.wap.wmlscript"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x305

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "text/vnd.wap.wml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x306

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-ms-wm"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x307

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wmv"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-ms-wmv"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x308

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wmx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-ms-wmx"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x309

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wmz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-ms-wmz"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x30a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wpd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.wordperfect"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x30b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wpl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-wpl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x30c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wps"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-works"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x30d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wqd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.wqd"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x30e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wri"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-mswrite"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x30f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wrl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "x-world/x-vrml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x310

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wrz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "x-world/x-vrml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x311

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wsdl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/wsdl+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x312

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wspolicy"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/wspolicy+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x313

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wtb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.webturbo"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x314

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wvx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "video/x-ms-wvx"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x315

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "x32"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-authorware-bin"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x316

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "x3d"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.hzn-3d-crossword"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x317

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xaf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "x-world/x-vrml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x318

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xap"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-silverlight-app"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x319

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xar"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.xara"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x31a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xbap"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-ms-xbap"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x31b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xbd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fujixerox.docuworks.binder"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x31c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xbm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-xbitmap"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x31d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xdm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.syncml.dm+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x31e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xdp"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.adobe.xdp+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x31f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xdw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.fujixerox.docuworks"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x320

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xenc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xenc+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x321

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xer"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/patch-ops-error+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x322

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xfdf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.adobe.xfdf"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x323

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xfdl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.xfdl"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x324

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xht"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xhtml+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x325

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xhtml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xhtml+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x326

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xhvml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xv+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x327

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xif"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/vnd.xiff"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x328

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xla"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-excel"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x329

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xlam"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-excel.addin.macroenabled.12"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x32a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xlb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-excel"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x32b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xlc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-excel"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x32c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xlm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-excel"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x32d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xls"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-excel"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x32e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xlsb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x32f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xlsm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-excel.sheet.macroenabled.12"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x330

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xlsx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x331

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xlt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-excel"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x332

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xltm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-excel.template.macroenabled.12"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x333

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xltx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x334

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xlw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-excel"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x335

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x336

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xo"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.olpc-sugar"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x337

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xof"

    aput-object v3, v2, v5

    const-string/jumbo v3, "x-world/x-vrml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x338

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xop"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xop+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x339

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xpdl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x33a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xpi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-xpinstall"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x33b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xpm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-xpixmap"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x33c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xpr"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.is-xpr"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x33d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xps"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.ms-xpsdocument"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x33e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xpw"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.intercon.formnet"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x33f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xpx"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.intercon.formnet"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x340

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xsl"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x341

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xslt"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xslt+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x342

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xsm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.syncml+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x343

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xspf"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xspf+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x344

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xul"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.mozilla.xul+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x345

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xvm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xv+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x346

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xvml"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/xv+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x347

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xwd"

    aput-object v3, v2, v5

    const-string/jumbo v3, "image/x-xwindowdump"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x348

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xyz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "chemical/x-xyz"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x349

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "z"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/x-compress"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x34a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "zaz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.zzazz.deck+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x34b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "zip"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/zip"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x34c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "zir"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.zul"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x34d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "zirz"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.zul"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x34e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "zmm"

    aput-object v3, v2, v5

    const-string/jumbo v3, "application/vnd.handheld-entertainment+xml"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lvj;->a:[[Ljava/lang/String;

    .line 2137
    sput v8, Lvj;->b:I

    .line 2139
    sput v7, Lvj;->c:I

    .line 2141
    sput v4, Lvj;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 0
    .param p0, "codePoint"    # I

    .prologue
    .line 2920
    sparse-switch p0, :sswitch_data_0

    .line 3893
    .end local p0    # "codePoint":I
    :goto_0
    return p0

    .line 2923
    .restart local p0    # "codePoint":I
    :sswitch_0
    const p0, 0xfe19b

    goto :goto_0

    .line 2925
    :sswitch_1
    const p0, 0xfe19c

    goto :goto_0

    .line 2927
    :sswitch_2
    const p0, 0xfe823

    goto :goto_0

    .line 2929
    :sswitch_3
    const p0, 0xfe19d

    goto :goto_0

    .line 2931
    :sswitch_4
    const p0, 0xfe19e

    goto :goto_0

    .line 2933
    :sswitch_5
    const p0, 0xfe4cf

    goto :goto_0

    .line 2935
    :sswitch_6
    const p0, 0xfe4cd

    goto :goto_0

    .line 2937
    :sswitch_7
    const p0, 0xfe4ef

    goto :goto_0

    .line 2939
    :sswitch_8
    const p0, 0xfe523

    goto :goto_0

    .line 2941
    :sswitch_9
    const p0, 0xfe525

    goto :goto_0

    .line 2943
    :sswitch_a
    const p0, 0xfe528

    goto :goto_0

    .line 2945
    :sswitch_b
    const p0, 0xfe538

    goto :goto_0

    .line 2947
    :sswitch_c
    const p0, 0xfeb96

    goto :goto_0

    .line 2949
    :sswitch_d
    const p0, 0xfeb97

    goto :goto_0

    .line 2951
    :sswitch_e
    const p0, 0xfeb98

    goto :goto_0

    .line 2953
    :sswitch_f
    const p0, 0xfeb93

    goto :goto_0

    .line 2955
    :sswitch_10
    const p0, 0xfeb94

    goto :goto_0

    .line 2957
    :sswitch_11
    const p0, 0xfeb95

    goto :goto_0

    .line 2959
    :sswitch_12
    const p0, 0xfe7d5

    goto :goto_0

    .line 2961
    :sswitch_13
    const p0, 0xfe7d2

    goto :goto_0

    .line 2963
    :sswitch_14
    const p0, 0xfe7d3

    goto :goto_0

    .line 2965
    :sswitch_15
    const p0, 0xfe7d1

    goto/16 :goto_0

    .line 2967
    :sswitch_16
    const p0, 0xfe7da

    goto/16 :goto_0

    .line 2969
    :sswitch_17
    const p0, 0xfe7d4

    goto/16 :goto_0

    .line 2971
    :sswitch_18
    const p0, 0xfe1bd

    goto/16 :goto_0

    .line 2973
    :sswitch_19
    const p0, 0xfe1be

    goto/16 :goto_0

    .line 2975
    :sswitch_1a
    const p0, 0xfe7e4

    goto/16 :goto_0

    .line 2977
    :sswitch_1b
    const p0, 0xfe7ea

    goto/16 :goto_0

    .line 2979
    :sswitch_1c
    const p0, 0xfe7e9

    goto/16 :goto_0

    .line 2981
    :sswitch_1d
    const p0, 0xfe7df

    goto/16 :goto_0

    .line 2983
    :sswitch_1e
    const p0, 0xfe7e3

    goto/16 :goto_0

    .line 2985
    :sswitch_1f
    const p0, 0xfeb09

    goto/16 :goto_0

    .line 2987
    :sswitch_20
    const p0, 0xfeb04

    goto/16 :goto_0

    .line 2989
    :sswitch_21
    const p0, 0xfeb0c

    goto/16 :goto_0

    .line 2991
    :sswitch_22
    const p0, 0xfeb0e

    goto/16 :goto_0

    .line 2993
    :sswitch_23
    const p0, 0xfe01e

    goto/16 :goto_0

    .line 2995
    :sswitch_24
    const p0, 0xfe01f

    goto/16 :goto_0

    .line 2997
    :sswitch_25
    const p0, 0xfe020

    goto/16 :goto_0

    .line 2999
    :sswitch_26
    const p0, 0xfe021

    goto/16 :goto_0

    .line 3001
    :sswitch_27
    const p0, 0xfe022

    goto/16 :goto_0

    .line 3003
    :sswitch_28
    const p0, 0xfe023

    goto/16 :goto_0

    .line 3005
    :sswitch_29
    const p0, 0xfe024

    goto/16 :goto_0

    .line 3007
    :sswitch_2a
    const p0, 0xfe025

    goto/16 :goto_0

    .line 3009
    :sswitch_2b
    const p0, 0xfe026

    goto/16 :goto_0

    .line 3011
    :sswitch_2c
    const p0, 0xfe027

    goto/16 :goto_0

    .line 3013
    :sswitch_2d
    const p0, 0xfe028

    goto/16 :goto_0

    .line 3015
    :sswitch_2e
    const p0, 0xfe029

    goto/16 :goto_0

    .line 3017
    :sswitch_2f
    const p0, 0xfe040

    goto/16 :goto_0

    .line 3019
    :sswitch_30
    const p0, 0xfe4d2

    goto/16 :goto_0

    .line 3021
    :sswitch_31
    const p0, 0xfe041

    goto/16 :goto_0

    .line 3023
    :sswitch_32
    const p0, 0xfe512

    goto/16 :goto_0

    .line 3025
    :sswitch_33
    const p0, 0xfe825

    goto/16 :goto_0

    .line 3027
    :sswitch_34
    const p0, 0xfe826

    goto/16 :goto_0

    .line 3029
    :sswitch_35
    const p0, 0xfe4b0

    goto/16 :goto_0

    .line 3031
    :sswitch_36
    const p0, 0xfe4bb

    goto/16 :goto_0

    .line 3033
    :sswitch_37
    const p0, 0xfe4b2

    goto/16 :goto_0

    .line 3035
    :sswitch_38
    const p0, 0xfe7ec

    goto/16 :goto_0

    .line 3037
    :sswitch_39
    const p0, 0xfe7f5

    goto/16 :goto_0

    .line 3039
    :sswitch_3a
    const p0, 0xfe4c3

    goto/16 :goto_0

    .line 3041
    :sswitch_3b
    const p0, 0xfe800

    goto/16 :goto_0

    .line 3043
    :sswitch_3c
    const p0, 0xfe801

    goto/16 :goto_0

    .line 3045
    :sswitch_3d
    const p0, 0xfe813

    goto/16 :goto_0

    .line 3047
    :sswitch_3e
    const p0, 0xfeb82

    goto/16 :goto_0

    .line 3049
    :sswitch_3f
    const p0, 0xfe815

    goto/16 :goto_0

    .line 3051
    :sswitch_40
    const p0, 0xfe816

    goto/16 :goto_0

    .line 3053
    :sswitch_41
    const p0, 0xfe818

    goto/16 :goto_0

    .line 3055
    :sswitch_42
    const p0, 0xfe980

    goto/16 :goto_0

    .line 3057
    :sswitch_43
    const p0, 0xfe982

    goto/16 :goto_0

    .line 3059
    :sswitch_44
    const p0, 0xfe981

    goto/16 :goto_0

    .line 3061
    :sswitch_45
    const p0, 0xfe962

    goto/16 :goto_0

    .line 3063
    :sswitch_46
    const p0, 0xfe983

    goto/16 :goto_0

    .line 3065
    :sswitch_47
    const p0, 0xfe003

    goto/16 :goto_0

    .line 3067
    :sswitch_48
    const p0, 0xfe001

    goto/16 :goto_0

    .line 3069
    :sswitch_49
    const p0, 0xfe000

    goto/16 :goto_0

    .line 3071
    :sswitch_4a
    const p0, 0xfe002

    goto/16 :goto_0

    .line 3073
    :sswitch_4b
    const p0, 0xfe014

    goto/16 :goto_0

    .line 3075
    :sswitch_4c
    const p0, 0xfe009

    goto/16 :goto_0

    .line 3077
    :sswitch_4d
    const p0, 0xfe1af

    goto/16 :goto_0

    .line 3079
    :sswitch_4e
    const p0, 0xfe1b8

    goto/16 :goto_0

    .line 3081
    :sswitch_4f
    const p0, 0xfe1c0

    goto/16 :goto_0

    .line 3083
    :sswitch_50
    const p0, 0xfe1c1

    goto/16 :goto_0

    .line 3085
    :sswitch_51
    const p0, 0xfe1b7

    goto/16 :goto_0

    .line 3087
    :sswitch_52
    const p0, 0xfe1c2

    goto/16 :goto_0

    .line 3089
    :sswitch_53
    const p0, 0xfe1c3

    goto/16 :goto_0

    .line 3091
    :sswitch_54
    const p0, 0xfe1bc

    goto/16 :goto_0

    .line 3093
    :sswitch_55
    const p0, 0xfe335

    goto/16 :goto_0

    .line 3095
    :sswitch_56
    const p0, 0xfe330

    goto/16 :goto_0

    .line 3097
    :sswitch_57
    const p0, 0xfe323

    goto/16 :goto_0

    .line 3099
    :sswitch_58
    const p0, 0xfe320

    goto/16 :goto_0

    .line 3101
    :sswitch_59
    const p0, 0xfe4f4

    goto/16 :goto_0

    .line 3103
    :sswitch_5a
    const p0, 0xfe52d

    goto/16 :goto_0

    .line 3105
    :sswitch_5b
    const p0, 0xfe52e

    goto/16 :goto_0

    .line 3107
    :sswitch_5c
    const p0, 0xfe52b

    goto/16 :goto_0

    .line 3109
    :sswitch_5d
    const p0, 0xfe526

    goto/16 :goto_0

    .line 3111
    :sswitch_5e
    const p0, 0xfe329

    goto/16 :goto_0

    .line 3113
    :sswitch_5f
    const p0, 0xfe327

    goto/16 :goto_0

    .line 3115
    :sswitch_60
    const p0, 0xfe341

    goto/16 :goto_0

    .line 3117
    :sswitch_61
    const p0, 0xfe344

    goto/16 :goto_0

    .line 3119
    :sswitch_62
    const p0, 0xfe1c4

    goto/16 :goto_0

    .line 3121
    :sswitch_63
    const p0, 0xfe1c5

    goto/16 :goto_0

    .line 3123
    :sswitch_64
    const p0, 0xfe1bf

    goto/16 :goto_0

    .line 3125
    :sswitch_65
    const p0, 0xfe1b0

    goto/16 :goto_0

    .line 3127
    :sswitch_66
    const p0, 0xfe7ed

    goto/16 :goto_0

    .line 3129
    :sswitch_67
    const p0, 0xfe4d1

    goto/16 :goto_0

    .line 3131
    :sswitch_68
    const p0, 0xfeb56

    goto/16 :goto_0

    .line 3133
    :sswitch_69
    const p0, 0xfe03c

    goto/16 :goto_0

    .line 3135
    :sswitch_6a
    const p0, 0xfe827

    goto/16 :goto_0

    .line 3137
    :sswitch_6b
    const p0, 0xfe510

    goto/16 :goto_0

    .line 3139
    :sswitch_6c
    const p0, 0xfe4f5

    goto/16 :goto_0

    .line 3141
    :sswitch_6d
    const p0, 0xfeb85

    goto/16 :goto_0

    .line 3143
    :sswitch_6e
    const p0, 0xfe7d9

    goto/16 :goto_0

    .line 3145
    :sswitch_6f
    const p0, 0xfe4ca

    goto/16 :goto_0

    .line 3147
    :sswitch_70
    const p0, 0xfe515

    goto/16 :goto_0

    .line 3149
    :sswitch_71
    const p0, 0xfe03f

    goto/16 :goto_0

    .line 3151
    :sswitch_72
    const p0, 0xfe042

    goto/16 :goto_0

    .line 3153
    :sswitch_73
    const p0, 0xfe1b2

    goto/16 :goto_0

    .line 3155
    :sswitch_74
    const p0, 0xfe1ae

    goto/16 :goto_0

    .line 3157
    :sswitch_75
    const p0, 0xfe1b3

    goto/16 :goto_0

    .line 3159
    :sswitch_76
    const p0, 0xfe4f6

    goto/16 :goto_0

    .line 3161
    :sswitch_77
    const p0, 0xfe53b

    goto/16 :goto_0

    .line 3163
    :sswitch_78
    const p0, 0xfe537

    goto/16 :goto_0

    .line 3165
    :sswitch_79
    const p0, 0xfe960

    goto/16 :goto_0

    .line 3167
    :sswitch_7a
    const p0, 0xfe4bc

    goto/16 :goto_0

    .line 3169
    :sswitch_7b
    const p0, 0xfe7fb

    goto/16 :goto_0

    .line 3171
    :sswitch_7c
    const p0, 0xfe7fa

    goto/16 :goto_0

    .line 3173
    :sswitch_7d
    const p0, 0xfe7fd

    goto/16 :goto_0

    .line 3175
    :sswitch_7e
    const p0, 0xfe807

    goto/16 :goto_0

    .line 3177
    :sswitch_7f
    const p0, 0xfe81d

    goto/16 :goto_0

    .line 3179
    :sswitch_80
    const p0, 0xfe81e

    goto/16 :goto_0

    .line 3181
    :sswitch_81
    const p0, 0xfe81f

    goto/16 :goto_0

    .line 3183
    :sswitch_82
    const p0, 0xfe820

    goto/16 :goto_0

    .line 3185
    :sswitch_83
    const p0, 0xfe81c

    goto/16 :goto_0

    .line 3187
    :sswitch_84
    const p0, 0xfe1b1

    goto/16 :goto_0

    .line 3189
    :sswitch_85
    const p0, 0xfe81b

    goto/16 :goto_0

    .line 3191
    :sswitch_86
    const p0, 0xfe80b

    goto/16 :goto_0

    .line 3193
    :sswitch_87
    const p0, 0xfeb32

    goto/16 :goto_0

    .line 3195
    :sswitch_88
    const p0, 0xfe4dd

    goto/16 :goto_0

    .line 3197
    :sswitch_89
    const p0, 0xfe80c

    goto/16 :goto_0

    .line 3199
    :sswitch_8a
    const p0, 0xfe7db

    goto/16 :goto_0

    .line 3201
    :sswitch_8b
    const p0, 0xfe7d7

    goto/16 :goto_0

    .line 3203
    :sswitch_8c
    const p0, 0xfe80d

    goto/16 :goto_0

    .line 3205
    :sswitch_8d
    const p0, 0xfe7dc

    goto/16 :goto_0

    .line 3207
    :sswitch_8e
    const p0, 0xfe7ee

    goto/16 :goto_0

    .line 3209
    :sswitch_8f
    const p0, 0xfe7eb

    goto/16 :goto_0

    .line 3211
    :sswitch_90
    const p0, 0xfe7f8

    goto/16 :goto_0

    .line 3213
    :sswitch_91
    const p0, 0xfeb33

    goto/16 :goto_0

    .line 3215
    :sswitch_92
    const p0, 0xfeb34

    goto/16 :goto_0

    .line 3217
    :sswitch_93
    const p0, 0xfeb35

    goto/16 :goto_0

    .line 3219
    :sswitch_94
    const p0, 0xfe509

    goto/16 :goto_0

    .line 3221
    :sswitch_95
    const p0, 0xfeb59

    goto/16 :goto_0

    .line 3223
    :sswitch_96
    const p0, 0xfe004

    goto/16 :goto_0

    .line 3225
    :sswitch_97
    const p0, 0xfe4d6

    goto/16 :goto_0

    .line 3227
    :sswitch_98
    const p0, 0xfe505

    goto/16 :goto_0

    .line 3229
    :sswitch_99
    const p0, 0xfe507

    goto/16 :goto_0

    .line 3231
    :sswitch_9a
    const p0, 0xfe821

    goto/16 :goto_0

    .line 3233
    :sswitch_9b
    const p0, 0xfe52f

    goto/16 :goto_0

    .line 3235
    :sswitch_9c
    const p0, 0xfe514

    goto/16 :goto_0

    .line 3237
    :sswitch_9d
    const p0, 0xfeb86

    goto/16 :goto_0

    .line 3239
    :sswitch_9e
    const p0, 0xfeb87

    goto/16 :goto_0

    .line 3241
    :sswitch_9f
    const p0, 0xfe00b

    goto/16 :goto_0

    .line 3243
    :sswitch_a0
    const p0, 0xfe965

    goto/16 :goto_0

    .line 3245
    :sswitch_a1
    const p0, 0xfe546

    goto/16 :goto_0

    .line 3247
    :sswitch_a2
    const p0, 0xfe4de

    goto/16 :goto_0

    .line 3249
    :sswitch_a3
    const p0, 0xfe4df

    goto/16 :goto_0

    .line 3251
    :sswitch_a4
    const p0, 0xfe531

    goto/16 :goto_0

    .line 3253
    :sswitch_a5
    const p0, 0xfeb5e

    goto/16 :goto_0

    .line 3255
    :sswitch_a6
    const p0, 0xfe4b5

    goto/16 :goto_0

    .line 3257
    :sswitch_a7
    const p0, 0xfe7f7

    goto/16 :goto_0

    .line 3259
    :sswitch_a8
    const p0, 0xfe7f6

    goto/16 :goto_0

    .line 3261
    :sswitch_a9
    const p0, 0xfe7e7

    goto/16 :goto_0

    .line 3263
    :sswitch_aa
    const p0, 0xfe506

    goto/16 :goto_0

    .line 3265
    :sswitch_ab
    const p0, 0xfe1a1

    goto/16 :goto_0

    .line 3267
    :sswitch_ac
    const p0, 0xfe4b3

    goto/16 :goto_0

    .line 3269
    :sswitch_ad
    const p0, 0xfe4b6

    goto/16 :goto_0

    .line 3271
    :sswitch_ae
    const p0, 0xfe4b4

    goto/16 :goto_0

    .line 3273
    :sswitch_af
    const p0, 0xfe4b9

    goto/16 :goto_0

    .line 3275
    :sswitch_b0
    const p0, 0xfe4ba

    goto/16 :goto_0

    .line 3277
    :sswitch_b1
    const p0, 0xfe4b7

    goto/16 :goto_0

    .line 3279
    :sswitch_b2
    const p0, 0xfe7e6

    goto/16 :goto_0

    .line 3281
    :sswitch_b3
    const p0, 0xfe7ef

    goto/16 :goto_0

    .line 3283
    :sswitch_b4
    const p0, 0xfe7f0

    goto/16 :goto_0

    .line 3285
    :sswitch_b5
    const p0, 0xfe7e8

    goto/16 :goto_0

    .line 3287
    :sswitch_b6
    const p0, 0xfeb24

    goto/16 :goto_0

    .line 3289
    :sswitch_b7
    const p0, 0xfeb19

    goto/16 :goto_0

    .line 3291
    :sswitch_b8
    const p0, 0xfeb61

    goto/16 :goto_0

    .line 3293
    :sswitch_b9
    const p0, 0xfeb62

    goto/16 :goto_0

    .line 3295
    :sswitch_ba
    const p0, 0xfeb25

    goto/16 :goto_0

    .line 3297
    :sswitch_bb
    const p0, 0xfeb1f

    goto/16 :goto_0

    .line 3299
    :sswitch_bc
    const p0, 0xfe044

    goto/16 :goto_0

    .line 3301
    :sswitch_bd
    const p0, 0xfeb20

    goto/16 :goto_0

    .line 3303
    :sswitch_be
    const p0, 0xfe838

    goto/16 :goto_0

    .line 3305
    :sswitch_bf
    const p0, 0xfeb1a

    goto/16 :goto_0

    .line 3307
    :sswitch_c0
    const p0, 0xfeb1c

    goto/16 :goto_0

    .line 3309
    :sswitch_c1
    const p0, 0xfeb1b

    goto/16 :goto_0

    .line 3311
    :sswitch_c2
    const p0, 0xfeb1d

    goto/16 :goto_0

    .line 3313
    :sswitch_c3
    const p0, 0xfe82c

    goto/16 :goto_0

    .line 3315
    :sswitch_c4
    const p0, 0xfe82b

    goto/16 :goto_0

    .line 3317
    :sswitch_c5
    const p0, 0xfeb36

    goto/16 :goto_0

    .line 3319
    :sswitch_c6
    const p0, 0xfeb37

    goto/16 :goto_0

    .line 3321
    :sswitch_c7
    const p0, 0xfeb38

    goto/16 :goto_0

    .line 3323
    :sswitch_c8
    const p0, 0xfeb39

    goto/16 :goto_0

    .line 3325
    :sswitch_c9
    const p0, 0xfeb3a

    goto/16 :goto_0

    .line 3327
    :sswitch_ca
    const p0, 0xfeb3b

    goto/16 :goto_0

    .line 3329
    :sswitch_cb
    const p0, 0xfeb3c

    goto/16 :goto_0

    .line 3331
    :sswitch_cc
    const p0, 0xfeb63

    goto/16 :goto_0

    .line 3333
    :sswitch_cd
    const p0, 0xfeb64

    goto/16 :goto_0

    .line 3335
    :sswitch_ce
    const p0, 0xfeb67

    goto/16 :goto_0

    .line 3337
    :sswitch_cf
    const p0, 0xfe82e

    goto/16 :goto_0

    .line 3339
    :sswitch_d0
    const p0, 0xfe82f

    goto/16 :goto_0

    .line 3341
    :sswitch_d1
    const p0, 0xfe830

    goto/16 :goto_0

    .line 3343
    :sswitch_d2
    const p0, 0xfe831

    goto/16 :goto_0

    .line 3345
    :sswitch_d3
    const p0, 0xfe832

    goto/16 :goto_0

    .line 3347
    :sswitch_d4
    const p0, 0xfe833

    goto/16 :goto_0

    .line 3349
    :sswitch_d5
    const p0, 0xfe834

    goto/16 :goto_0

    .line 3351
    :sswitch_d6
    const p0, 0xfe835

    goto/16 :goto_0

    .line 3353
    :sswitch_d7
    const p0, 0xfe836

    goto/16 :goto_0

    .line 3355
    :sswitch_d8
    const p0, 0xfe837

    goto/16 :goto_0

    .line 3357
    :sswitch_d9
    const p0, 0xfeb3d

    goto/16 :goto_0

    .line 3359
    :sswitch_da
    const p0, 0xfeb3e

    goto/16 :goto_0

    .line 3361
    :sswitch_db
    const p0, 0xfeb3f

    goto/16 :goto_0

    .line 3363
    :sswitch_dc
    const p0, 0xfeb81

    goto/16 :goto_0

    .line 3365
    :sswitch_dd
    const p0, 0xfeb31

    goto/16 :goto_0

    .line 3367
    :sswitch_de
    const p0, 0xfeb2f

    goto/16 :goto_0

    .line 3369
    :sswitch_df
    const p0, 0xfeb40

    goto/16 :goto_0

    .line 3371
    :sswitch_e0
    const p0, 0xfeb41

    goto/16 :goto_0

    .line 3373
    :sswitch_e1
    const p0, 0xfeb99

    goto/16 :goto_0

    .line 3375
    :sswitch_e2
    const p0, 0xfeb9a

    goto/16 :goto_0

    .line 3377
    :sswitch_e3
    const p0, 0xfeb9b

    goto/16 :goto_0

    .line 3379
    :sswitch_e4
    const p0, 0xfeb9c

    goto/16 :goto_0

    .line 3381
    :sswitch_e5
    const p0, 0xfeaf8

    goto/16 :goto_0

    .line 3383
    :sswitch_e6
    const p0, 0xfeaf9

    goto/16 :goto_0

    .line 3385
    :sswitch_e7
    const p0, 0xfeafa

    goto/16 :goto_0

    .line 3387
    :sswitch_e8
    const p0, 0xfeafb

    goto/16 :goto_0

    .line 3389
    :sswitch_e9
    const p0, 0xfeaf0

    goto/16 :goto_0

    .line 3391
    :sswitch_ea
    const p0, 0xfeaf2

    goto/16 :goto_0

    .line 3393
    :sswitch_eb
    const p0, 0xfeaf1

    goto/16 :goto_0

    .line 3395
    :sswitch_ec
    const p0, 0xfeaf3

    goto/16 :goto_0

    .line 3397
    :sswitch_ed
    const p0, 0xfeafc

    goto/16 :goto_0

    .line 3399
    :sswitch_ee
    const p0, 0xfeafd

    goto/16 :goto_0

    .line 3401
    :sswitch_ef
    const p0, 0xfeafe

    goto/16 :goto_0

    .line 3403
    :sswitch_f0
    const p0, 0xfeaff

    goto/16 :goto_0

    .line 3405
    :sswitch_f1
    const p0, 0xfe4f8

    goto/16 :goto_0

    .line 3407
    :sswitch_f2
    const p0, 0xfe02b

    goto/16 :goto_0

    .line 3409
    :sswitch_f3
    const p0, 0xfe02c

    goto/16 :goto_0

    .line 3411
    :sswitch_f4
    const p0, 0xfe02d

    goto/16 :goto_0

    .line 3413
    :sswitch_f5
    const p0, 0xfe02e

    goto/16 :goto_0

    .line 3415
    :sswitch_f6
    const p0, 0xfe02f

    goto/16 :goto_0

    .line 3417
    :sswitch_f7
    const p0, 0xfe030

    goto/16 :goto_0

    .line 3419
    :sswitch_f8
    const p0, 0xfe031

    goto/16 :goto_0

    .line 3421
    :sswitch_f9
    const p0, 0xfe032

    goto/16 :goto_0

    .line 3423
    :sswitch_fa
    const p0, 0xfe033

    goto/16 :goto_0

    .line 3425
    :sswitch_fb
    const p0, 0xfe034

    goto/16 :goto_0

    .line 3427
    :sswitch_fc
    const p0, 0xfe035

    goto/16 :goto_0

    .line 3429
    :sswitch_fd
    const p0, 0xfe036

    goto/16 :goto_0

    .line 3431
    :sswitch_fe
    const p0, 0xfe037

    goto/16 :goto_0

    .line 3433
    :sswitch_ff
    const p0, 0xfeb42

    goto/16 :goto_0

    .line 3435
    :sswitch_100
    const p0, 0xfeb27

    goto/16 :goto_0

    .line 3437
    :sswitch_101
    const p0, 0xfeb29

    goto/16 :goto_0

    .line 3439
    :sswitch_102
    const p0, 0xfeb2d

    goto/16 :goto_0

    .line 3441
    :sswitch_103
    const p0, 0xfe839

    goto/16 :goto_0

    .line 3443
    :sswitch_104
    const p0, 0xfe83a

    goto/16 :goto_0

    .line 3445
    :sswitch_105
    const p0, 0xfeb23

    goto/16 :goto_0

    .line 3447
    :sswitch_106
    const p0, 0xfe1b4

    goto/16 :goto_0

    .line 3449
    :sswitch_107
    const p0, 0xfee77

    goto/16 :goto_0

    .line 3451
    :sswitch_108
    const p0, 0xfee78

    goto/16 :goto_0

    .line 3453
    :sswitch_109
    const p0, 0xfee79

    goto/16 :goto_0

    .line 3455
    :sswitch_10a
    const p0, 0xfee7a

    goto/16 :goto_0

    .line 3457
    :sswitch_10b
    const p0, 0xfee7b

    goto/16 :goto_0

    .line 3459
    :sswitch_10c
    const p0, 0xfee7c

    goto/16 :goto_0

    .line 3461
    :sswitch_10d
    const p0, 0xfee7d

    goto/16 :goto_0

    .line 3463
    :sswitch_10e
    const p0, 0xfe527

    goto/16 :goto_0

    .line 3465
    :sswitch_10f
    const p0, 0xfe4d3

    goto/16 :goto_0

    .line 3467
    :sswitch_110
    const p0, 0xfe045

    goto/16 :goto_0

    .line 3469
    :sswitch_111
    const p0, 0xfe03d

    goto/16 :goto_0

    .line 3471
    :sswitch_112
    const p0, 0xfe046

    goto/16 :goto_0

    .line 3473
    :sswitch_113
    const p0, 0xfe828

    goto/16 :goto_0

    .line 3475
    :sswitch_114
    const p0, 0xfe047

    goto/16 :goto_0

    .line 3477
    :sswitch_115
    const p0, 0xfe048

    goto/16 :goto_0

    .line 3479
    :sswitch_116
    const p0, 0xfe508

    goto/16 :goto_0

    .line 3481
    :sswitch_117
    const p0, 0xfe803

    goto/16 :goto_0

    .line 3483
    :sswitch_118
    const p0, 0xfe985

    goto/16 :goto_0

    .line 3485
    :sswitch_119
    const p0, 0xfe987

    goto/16 :goto_0

    .line 3487
    :sswitch_11a
    const p0, 0xfeb43

    goto/16 :goto_0

    .line 3489
    :sswitch_11b
    const p0, 0xfeb1e

    goto/16 :goto_0

    .line 3491
    :sswitch_11c
    const p0, 0xfe50a

    goto/16 :goto_0

    .line 3493
    :sswitch_11d
    const p0, 0xfe516

    goto/16 :goto_0

    .line 3495
    :sswitch_11e
    const p0, 0xfeb58

    goto/16 :goto_0

    .line 3497
    :sswitch_11f
    const p0, 0xfe517

    goto/16 :goto_0

    .line 3499
    :sswitch_120
    const p0, 0xfe53e

    goto/16 :goto_0

    .line 3501
    :sswitch_121
    const p0, 0xfe50f

    goto/16 :goto_0

    .line 3503
    :sswitch_122
    const p0, 0xfeb2b

    goto/16 :goto_0

    .line 3505
    :sswitch_123
    const p0, 0xfe53c

    goto/16 :goto_0

    .line 3507
    :sswitch_124
    const p0, 0xfe530

    goto/16 :goto_0

    .line 3509
    :sswitch_125
    const p0, 0xfe4d4

    goto/16 :goto_0

    .line 3511
    :sswitch_126
    const p0, 0xfe4d5

    goto/16 :goto_0

    .line 3513
    :sswitch_127
    const p0, 0xfe4d7

    goto/16 :goto_0

    .line 3515
    :sswitch_128
    const p0, 0xfe4d8

    goto/16 :goto_0

    .line 3517
    :sswitch_129
    const p0, 0xfe195

    goto/16 :goto_0

    .line 3519
    :sswitch_12a
    const p0, 0xfe196

    goto/16 :goto_0

    .line 3521
    :sswitch_12b
    const p0, 0xfe197

    goto/16 :goto_0

    .line 3523
    :sswitch_12c
    const p0, 0xfe198

    goto/16 :goto_0

    .line 3525
    :sswitch_12d
    const p0, 0xfe199

    goto/16 :goto_0

    .line 3527
    :sswitch_12e
    const p0, 0xfe4d9

    goto/16 :goto_0

    .line 3529
    :sswitch_12f
    const p0, 0xfe4da

    goto/16 :goto_0

    .line 3531
    :sswitch_130
    const p0, 0xfe4f0

    goto/16 :goto_0

    .line 3533
    :sswitch_131
    const p0, 0xfe808

    goto/16 :goto_0

    .line 3535
    :sswitch_132
    const p0, 0xfe4f2

    goto/16 :goto_0

    .line 3537
    :sswitch_133
    const p0, 0xfe814

    goto/16 :goto_0

    .line 3539
    :sswitch_134
    const p0, 0xfeb0d

    goto/16 :goto_0

    .line 3541
    :sswitch_135
    const p0, 0xfeb11

    goto/16 :goto_0

    .line 3543
    :sswitch_136
    const p0, 0xfeb12

    goto/16 :goto_0

    .line 3545
    :sswitch_137
    const p0, 0xfeb13

    goto/16 :goto_0

    .line 3547
    :sswitch_138
    const p0, 0xfeb14

    goto/16 :goto_0

    .line 3549
    :sswitch_139
    const p0, 0xfeb15

    goto/16 :goto_0

    .line 3551
    :sswitch_13a
    const p0, 0xfeb16

    goto/16 :goto_0

    .line 3553
    :sswitch_13b
    const p0, 0xfeb60

    goto/16 :goto_0

    .line 3555
    :sswitch_13c
    const p0, 0xfeb68

    goto/16 :goto_0

    .line 3557
    :sswitch_13d
    const p0, 0xfeb5d

    goto/16 :goto_0

    .line 3559
    :sswitch_13e
    const p0, 0xfeb5b

    goto/16 :goto_0

    .line 3561
    :sswitch_13f
    const p0, 0xfeb44

    goto/16 :goto_0

    .line 3563
    :sswitch_140
    const p0, 0xfeb45

    goto/16 :goto_0

    .line 3565
    :sswitch_141
    const p0, 0xfeb57

    goto/16 :goto_0

    .line 3567
    :sswitch_142
    const p0, 0xfeb69

    goto/16 :goto_0

    .line 3569
    :sswitch_143
    const p0, 0xfeb0a

    goto/16 :goto_0

    .line 3571
    :sswitch_144
    const p0, 0xfeb0b

    goto/16 :goto_0

    .line 3573
    :sswitch_145
    const p0, 0xfe984

    goto/16 :goto_0

    .line 3575
    :sswitch_146
    const p0, 0xfe964

    goto/16 :goto_0

    .line 3577
    :sswitch_147
    const p0, 0xfe966

    goto/16 :goto_0

    .line 3579
    :sswitch_148
    const p0, 0xfe967

    goto/16 :goto_0

    .line 3581
    :sswitch_149
    const p0, 0xfe968

    goto/16 :goto_0

    .line 3583
    :sswitch_14a
    const p0, 0xfe969

    goto/16 :goto_0

    .line 3585
    :sswitch_14b
    const p0, 0xfe96a

    goto/16 :goto_0

    .line 3587
    :sswitch_14c
    const p0, 0xfe96b

    goto/16 :goto_0

    .line 3589
    :sswitch_14d
    const p0, 0xfe963

    goto/16 :goto_0

    .line 3591
    :sswitch_14e
    const p0, 0xfe96c

    goto/16 :goto_0

    .line 3593
    :sswitch_14f
    const p0, 0xfe961

    goto/16 :goto_0

    .line 3595
    :sswitch_150
    const p0, 0xfe96d

    goto/16 :goto_0

    .line 3597
    :sswitch_151
    const p0, 0xfe96e

    goto/16 :goto_0

    .line 3599
    :sswitch_152
    const p0, 0xfe051

    goto/16 :goto_0

    .line 3601
    :sswitch_153
    const p0, 0xfe052

    goto/16 :goto_0

    .line 3603
    :sswitch_154
    const p0, 0xfe053

    goto/16 :goto_0

    .line 3605
    :sswitch_155
    const p0, 0xfe054

    goto/16 :goto_0

    .line 3607
    :sswitch_156
    const p0, 0xfe055

    goto/16 :goto_0

    .line 3609
    :sswitch_157
    const p0, 0xfe056

    goto/16 :goto_0

    .line 3611
    :sswitch_158
    const p0, 0xfe511

    goto/16 :goto_0

    .line 3613
    :sswitch_159
    const p0, 0xfe96f

    goto/16 :goto_0

    .line 3615
    :sswitch_15a
    const p0, 0xfe970

    goto/16 :goto_0

    .line 3617
    :sswitch_15b
    const p0, 0xfe345

    goto/16 :goto_0

    .line 3619
    :sswitch_15c
    const p0, 0xfe343

    goto/16 :goto_0

    .line 3621
    :sswitch_15d
    const p0, 0xfe340

    goto/16 :goto_0

    .line 3623
    :sswitch_15e
    const p0, 0xfe333

    goto/16 :goto_0

    .line 3625
    :sswitch_15f
    const p0, 0xfe347

    goto/16 :goto_0

    .line 3627
    :sswitch_160
    const p0, 0xfe33c

    goto/16 :goto_0

    .line 3629
    :sswitch_161
    const p0, 0xfe33f

    goto/16 :goto_0

    .line 3631
    :sswitch_162
    const p0, 0xfe342

    goto/16 :goto_0

    .line 3633
    :sswitch_163
    const p0, 0xfe32a

    goto/16 :goto_0

    .line 3635
    :sswitch_164
    const p0, 0xfe33e

    goto/16 :goto_0

    .line 3637
    :sswitch_165
    const p0, 0xfe33b

    goto/16 :goto_0

    .line 3639
    :sswitch_166
    const p0, 0xfe32e

    goto/16 :goto_0

    .line 3641
    :sswitch_167
    const p0, 0xfe32f

    goto/16 :goto_0

    .line 3643
    :sswitch_168
    const p0, 0xfe326

    goto/16 :goto_0

    .line 3645
    :sswitch_169
    const p0, 0xfe325

    goto/16 :goto_0

    .line 3647
    :sswitch_16a
    const p0, 0xfe322

    goto/16 :goto_0

    .line 3649
    :sswitch_16b
    const p0, 0xfe33a

    goto/16 :goto_0

    .line 3651
    :sswitch_16c
    const p0, 0xfe334

    goto/16 :goto_0

    .line 3653
    :sswitch_16d
    const p0, 0xfe339

    goto/16 :goto_0

    .line 3655
    :sswitch_16e
    const p0, 0xfe336

    goto/16 :goto_0

    .line 3657
    :sswitch_16f
    const p0, 0xfe338

    goto/16 :goto_0

    .line 3659
    :sswitch_170
    const p0, 0xfe33d

    goto/16 :goto_0

    .line 3661
    :sswitch_171
    const p0, 0xfe32d

    goto/16 :goto_0

    .line 3663
    :sswitch_172
    const p0, 0xfe32c

    goto/16 :goto_0

    .line 3665
    :sswitch_173
    const p0, 0xfe190

    goto/16 :goto_0

    .line 3667
    :sswitch_174
    const p0, 0xfe192

    goto/16 :goto_0

    .line 3669
    :sswitch_175
    const p0, 0xfe191

    goto/16 :goto_0

    .line 3671
    :sswitch_176
    const p0, 0xfe193

    goto/16 :goto_0

    .line 3673
    :sswitch_177
    const p0, 0xfe35b

    goto/16 :goto_0

    .line 3675
    :sswitch_178
    const p0, 0xfeb9d

    goto/16 :goto_0

    .line 3677
    :sswitch_179
    const p0, 0xfeb9e

    goto/16 :goto_0

    .line 3679
    :sswitch_17a
    const p0, 0xfeb9f

    goto/16 :goto_0

    .line 3681
    :sswitch_17b
    const p0, 0xfeba0

    goto/16 :goto_0

    .line 3683
    :sswitch_17c
    const p0, 0xfeba1

    goto/16 :goto_0

    .line 3685
    :sswitch_17d
    const p0, 0xfe351

    goto/16 :goto_0

    .line 3687
    :sswitch_17e
    const p0, 0xfe352

    goto/16 :goto_0

    .line 3689
    :sswitch_17f
    const p0, 0xfe829

    goto/16 :goto_0

    .line 3691
    :sswitch_180
    const p0, 0xfe353

    goto/16 :goto_0

    .line 3693
    :sswitch_181
    const p0, 0xfe358

    goto/16 :goto_0

    .line 3695
    :sswitch_182
    const p0, 0xfe1a0

    goto/16 :goto_0

    .line 3697
    :sswitch_183
    const p0, 0xfe1a2

    goto/16 :goto_0

    .line 3699
    :sswitch_184
    const p0, 0xfe7d6

    goto/16 :goto_0

    .line 3701
    :sswitch_185
    const p0, 0xfe7dd

    goto/16 :goto_0

    .line 3703
    :sswitch_186
    const p0, 0xfe80e

    goto/16 :goto_0

    .line 3705
    :sswitch_187
    const p0, 0xfe7de

    goto/16 :goto_0

    .line 3707
    :sswitch_188
    const p0, 0xfe7e5

    goto/16 :goto_0

    .line 3709
    :sswitch_189
    const p0, 0xfe7f1

    goto/16 :goto_0

    .line 3711
    :sswitch_18a
    const p0, 0xfe7f2

    goto/16 :goto_0

    .line 3713
    :sswitch_18b
    const p0, 0xfe7f3

    goto/16 :goto_0

    .line 3715
    :sswitch_18c
    const p0, 0xfe7f4

    goto/16 :goto_0

    .line 3717
    :sswitch_18d
    const p0, 0xfe7fe

    goto/16 :goto_0

    .line 3719
    :sswitch_18e
    const p0, 0xfe7e0

    goto/16 :goto_0

    .line 3721
    :sswitch_18f
    const p0, 0xfe7e2

    goto/16 :goto_0

    .line 3723
    :sswitch_190
    const p0, 0xfe518

    goto/16 :goto_0

    .line 3725
    :sswitch_191
    const p0, 0xfeb17

    goto/16 :goto_0

    .line 3727
    :sswitch_192
    const p0, 0xfe519

    goto/16 :goto_0

    .line 3729
    :sswitch_193
    const p0, 0xfe51a

    goto/16 :goto_0

    .line 3731
    :sswitch_194
    const p0, 0xfe51b

    goto/16 :goto_0

    .line 3733
    :sswitch_195
    const p0, 0xfe51c

    goto/16 :goto_0

    .line 3735
    :sswitch_196
    const p0, 0xfe007

    goto/16 :goto_0

    .line 3737
    :sswitch_197
    const p0, 0xfe82a

    goto/16 :goto_0

    .line 3739
    :sswitch_198
    const p0, 0xfe038

    goto/16 :goto_0

    .line 3741
    :sswitch_199
    const p0, 0xfe971

    goto/16 :goto_0

    .line 3743
    :sswitch_19a
    const p0, 0xfe51d

    goto/16 :goto_0

    .line 3745
    :sswitch_19b
    const p0, 0xfe1c6

    goto/16 :goto_0

    .line 3747
    :sswitch_19c
    const p0, 0xfe51e

    goto/16 :goto_0

    .line 3749
    :sswitch_19d
    const p0, 0xfe005

    goto/16 :goto_0

    .line 3751
    :sswitch_19e
    const p0, 0xfe049

    goto/16 :goto_0

    .line 3753
    :sswitch_19f
    const p0, 0xfe51f

    goto/16 :goto_0

    .line 3755
    :sswitch_1a0
    const p0, 0xfe017

    goto/16 :goto_0

    .line 3757
    :sswitch_1a1
    const p0, 0xfe043

    goto/16 :goto_0

    .line 3759
    :sswitch_1a2
    const p0, 0xfe513

    goto/16 :goto_0

    .line 3761
    :sswitch_1a3
    const p0, 0xfe00a

    goto/16 :goto_0

    .line 3763
    :sswitch_1a4
    const p0, 0xfe00c

    goto/16 :goto_0

    .line 3765
    :sswitch_1a5
    const p0, 0xfe008

    goto/16 :goto_0

    .line 3767
    :sswitch_1a6
    const p0, 0xfe00d

    goto/16 :goto_0

    .line 3769
    :sswitch_1a7
    const p0, 0xfe4b8

    goto/16 :goto_0

    .line 3771
    :sswitch_1a8
    const p0, 0xfe804

    goto/16 :goto_0

    .line 3773
    :sswitch_1a9
    const p0, 0xfe805

    goto/16 :goto_0

    .line 3775
    :sswitch_1aa
    const p0, 0xfe4bd

    goto/16 :goto_0

    .line 3777
    :sswitch_1ab
    const p0, 0xfe4be

    goto/16 :goto_0

    .line 3779
    :sswitch_1ac
    const p0, 0xfe4bf

    goto/16 :goto_0

    .line 3781
    :sswitch_1ad
    const p0, 0xfe802

    goto/16 :goto_0

    .line 3783
    :sswitch_1ae
    const p0, 0xfe4c0

    goto/16 :goto_0

    .line 3785
    :sswitch_1af
    const p0, 0xfe4c4

    goto/16 :goto_0

    .line 3787
    :sswitch_1b0
    const p0, 0xfe4c5

    goto/16 :goto_0

    .line 3789
    :sswitch_1b1
    const p0, 0xfe4e5

    goto/16 :goto_0

    .line 3791
    :sswitch_1b2
    const p0, 0xfe4e6

    goto/16 :goto_0

    .line 3793
    :sswitch_1b3
    const p0, 0xfe4e7

    goto/16 :goto_0

    .line 3795
    :sswitch_1b4
    const p0, 0xfe4e8

    goto/16 :goto_0

    .line 3797
    :sswitch_1b5
    const p0, 0xfe4e9

    goto/16 :goto_0

    .line 3799
    :sswitch_1b6
    const p0, 0xfe4ea

    goto/16 :goto_0

    .line 3801
    :sswitch_1b7
    const p0, 0xfe4eb

    goto/16 :goto_0

    .line 3803
    :sswitch_1b8
    const p0, 0xfe4ec

    goto/16 :goto_0

    .line 3805
    :sswitch_1b9
    const p0, 0xfe4ed

    goto/16 :goto_0

    .line 3807
    :sswitch_1ba
    const p0, 0xfe4ee

    goto/16 :goto_0

    .line 3809
    :sswitch_1bb
    const p0, 0xfe1a4

    goto/16 :goto_0

    .line 3811
    :sswitch_1bc
    const p0, 0xfe1a5

    goto/16 :goto_0

    .line 3813
    :sswitch_1bd
    const p0, 0xfe1a6

    goto/16 :goto_0

    .line 3815
    :sswitch_1be
    const p0, 0xfe1a7

    goto/16 :goto_0

    .line 3817
    :sswitch_1bf
    const p0, 0xfe1a8

    goto/16 :goto_0

    .line 3819
    :sswitch_1c0
    const p0, 0xfe1a9

    goto/16 :goto_0

    .line 3821
    :sswitch_1c1
    const p0, 0xfe1aa

    goto/16 :goto_0

    .line 3823
    :sswitch_1c2
    const p0, 0xfe1ab

    goto/16 :goto_0

    .line 3825
    :sswitch_1c3
    const p0, 0xfe4c6

    goto/16 :goto_0

    .line 3827
    :sswitch_1c4
    const p0, 0xfe1b5

    goto/16 :goto_0

    .line 3829
    :sswitch_1c5
    const p0, 0xfe1b6

    goto/16 :goto_0

    .line 3831
    :sswitch_1c6
    const p0, 0xfe1c7

    goto/16 :goto_0

    .line 3833
    :sswitch_1c7
    const p0, 0xfe1c8

    goto/16 :goto_0

    .line 3835
    :sswitch_1c8
    const p0, 0xfe1c9

    goto/16 :goto_0

    .line 3837
    :sswitch_1c9
    const p0, 0xfe1ba

    goto/16 :goto_0

    .line 3839
    :sswitch_1ca
    const p0, 0xfe1ca

    goto/16 :goto_0

    .line 3841
    :sswitch_1cb
    const p0, 0xfe1cb

    goto/16 :goto_0

    .line 3843
    :sswitch_1cc
    const p0, 0xfe1cc

    goto/16 :goto_0

    .line 3845
    :sswitch_1cd
    const p0, 0xfe1cd

    goto/16 :goto_0

    .line 3847
    :sswitch_1ce
    const p0, 0xfe1ce

    goto/16 :goto_0

    .line 3849
    :sswitch_1cf
    const p0, 0xfe1cf

    goto/16 :goto_0

    .line 3851
    :sswitch_1d0
    const p0, 0xfe1d0

    goto/16 :goto_0

    .line 3853
    :sswitch_1d1
    const p0, 0xfe1d1

    goto/16 :goto_0

    .line 3855
    :sswitch_1d2
    const p0, 0xfe1d2

    goto/16 :goto_0

    .line 3857
    :sswitch_1d3
    const p0, 0xfe1d3

    goto/16 :goto_0

    .line 3859
    :sswitch_1d4
    const p0, 0xfe1d4

    goto/16 :goto_0

    .line 3861
    :sswitch_1d5
    const p0, 0xfe1d5

    goto/16 :goto_0

    .line 3863
    :sswitch_1d6
    const p0, 0xfe1d6

    goto/16 :goto_0

    .line 3865
    :sswitch_1d7
    const p0, 0xfe1d7

    goto/16 :goto_0

    .line 3867
    :sswitch_1d8
    const p0, 0xfe50b

    goto/16 :goto_0

    .line 3869
    :sswitch_1d9
    const p0, 0xfe50c

    goto/16 :goto_0

    .line 3871
    :sswitch_1da
    const p0, 0xfe50d

    goto/16 :goto_0

    .line 3873
    :sswitch_1db
    const p0, 0xfe50e

    goto/16 :goto_0

    .line 3875
    :sswitch_1dc
    const p0, 0xfe553

    goto/16 :goto_0

    .line 3877
    :sswitch_1dd
    const p0, 0xfeb2a

    goto/16 :goto_0

    .line 3879
    :sswitch_1de
    const p0, 0xfee70

    goto/16 :goto_0

    .line 3881
    :sswitch_1df
    const p0, 0xfee71

    goto/16 :goto_0

    .line 3883
    :sswitch_1e0
    const p0, 0xfee72

    goto/16 :goto_0

    .line 3885
    :sswitch_1e1
    const p0, 0xfee73

    goto/16 :goto_0

    .line 3887
    :sswitch_1e2
    const p0, 0xfee74

    goto/16 :goto_0

    .line 3889
    :sswitch_1e3
    const p0, 0xfee75

    goto/16 :goto_0

    .line 3891
    :sswitch_1e4
    const p0, 0xfee76

    goto/16 :goto_0

    .line 2920
    :sswitch_data_0
    .sparse-switch
        0xe001 -> :sswitch_0
        0xe002 -> :sswitch_1
        0xe003 -> :sswitch_2
        0xe004 -> :sswitch_3
        0xe005 -> :sswitch_4
        0xe006 -> :sswitch_5
        0xe007 -> :sswitch_6
        0xe008 -> :sswitch_7
        0xe009 -> :sswitch_8
        0xe00a -> :sswitch_9
        0xe00b -> :sswitch_a
        0xe00c -> :sswitch_b
        0xe00d -> :sswitch_c
        0xe00e -> :sswitch_d
        0xe00f -> :sswitch_e
        0xe010 -> :sswitch_f
        0xe011 -> :sswitch_10
        0xe012 -> :sswitch_11
        0xe013 -> :sswitch_12
        0xe014 -> :sswitch_13
        0xe015 -> :sswitch_14
        0xe016 -> :sswitch_15
        0xe017 -> :sswitch_16
        0xe018 -> :sswitch_17
        0xe019 -> :sswitch_18
        0xe01a -> :sswitch_19
        0xe01b -> :sswitch_1a
        0xe01c -> :sswitch_1b
        0xe01d -> :sswitch_1c
        0xe01e -> :sswitch_1d
        0xe01f -> :sswitch_1e
        0xe020 -> :sswitch_1f
        0xe021 -> :sswitch_20
        0xe022 -> :sswitch_21
        0xe023 -> :sswitch_22
        0xe024 -> :sswitch_23
        0xe025 -> :sswitch_24
        0xe026 -> :sswitch_25
        0xe027 -> :sswitch_26
        0xe028 -> :sswitch_27
        0xe029 -> :sswitch_28
        0xe02a -> :sswitch_29
        0xe02b -> :sswitch_2a
        0xe02c -> :sswitch_2b
        0xe02d -> :sswitch_2c
        0xe02e -> :sswitch_2d
        0xe02f -> :sswitch_2e
        0xe030 -> :sswitch_2f
        0xe031 -> :sswitch_30
        0xe032 -> :sswitch_31
        0xe033 -> :sswitch_32
        0xe034 -> :sswitch_33
        0xe035 -> :sswitch_34
        0xe036 -> :sswitch_35
        0xe037 -> :sswitch_36
        0xe038 -> :sswitch_37
        0xe039 -> :sswitch_38
        0xe03a -> :sswitch_39
        0xe03b -> :sswitch_3a
        0xe03c -> :sswitch_3b
        0xe03d -> :sswitch_3c
        0xe03e -> :sswitch_3d
        0xe03f -> :sswitch_3e
        0xe040 -> :sswitch_3f
        0xe041 -> :sswitch_40
        0xe042 -> :sswitch_41
        0xe043 -> :sswitch_42
        0xe044 -> :sswitch_43
        0xe045 -> :sswitch_44
        0xe046 -> :sswitch_45
        0xe047 -> :sswitch_46
        0xe048 -> :sswitch_47
        0xe049 -> :sswitch_48
        0xe04a -> :sswitch_49
        0xe04b -> :sswitch_4a
        0xe04c -> :sswitch_4b
        0xe04d -> :sswitch_4c
        0xe04e -> :sswitch_4d
        0xe04f -> :sswitch_4e
        0xe050 -> :sswitch_4f
        0xe051 -> :sswitch_50
        0xe052 -> :sswitch_51
        0xe053 -> :sswitch_52
        0xe054 -> :sswitch_53
        0xe055 -> :sswitch_54
        0xe056 -> :sswitch_55
        0xe057 -> :sswitch_56
        0xe058 -> :sswitch_57
        0xe059 -> :sswitch_58
        0xe05a -> :sswitch_59
        0xe101 -> :sswitch_5a
        0xe102 -> :sswitch_5b
        0xe103 -> :sswitch_5c
        0xe104 -> :sswitch_5d
        0xe105 -> :sswitch_5e
        0xe106 -> :sswitch_5f
        0xe107 -> :sswitch_60
        0xe108 -> :sswitch_61
        0xe109 -> :sswitch_62
        0xe10a -> :sswitch_63
        0xe10b -> :sswitch_64
        0xe10c -> :sswitch_65
        0xe10d -> :sswitch_66
        0xe10e -> :sswitch_67
        0xe10f -> :sswitch_68
        0xe110 -> :sswitch_69
        0xe111 -> :sswitch_6a
        0xe112 -> :sswitch_6b
        0xe113 -> :sswitch_6c
        0xe114 -> :sswitch_6d
        0xe115 -> :sswitch_6e
        0xe116 -> :sswitch_6f
        0xe117 -> :sswitch_70
        0xe118 -> :sswitch_71
        0xe119 -> :sswitch_72
        0xe11a -> :sswitch_73
        0xe11b -> :sswitch_74
        0xe11c -> :sswitch_75
        0xe11d -> :sswitch_76
        0xe11e -> :sswitch_77
        0xe11f -> :sswitch_78
        0xe120 -> :sswitch_79
        0xe121 -> :sswitch_7a
        0xe122 -> :sswitch_7b
        0xe123 -> :sswitch_7c
        0xe124 -> :sswitch_7d
        0xe125 -> :sswitch_7e
        0xe126 -> :sswitch_7f
        0xe127 -> :sswitch_80
        0xe128 -> :sswitch_81
        0xe129 -> :sswitch_82
        0xe12a -> :sswitch_83
        0xe12b -> :sswitch_84
        0xe12c -> :sswitch_85
        0xe12d -> :sswitch_86
        0xe12e -> :sswitch_87
        0xe12f -> :sswitch_88
        0xe130 -> :sswitch_89
        0xe131 -> :sswitch_8a
        0xe132 -> :sswitch_8b
        0xe133 -> :sswitch_8c
        0xe134 -> :sswitch_8d
        0xe135 -> :sswitch_8e
        0xe136 -> :sswitch_8f
        0xe137 -> :sswitch_90
        0xe138 -> :sswitch_91
        0xe139 -> :sswitch_92
        0xe13a -> :sswitch_93
        0xe13b -> :sswitch_94
        0xe13c -> :sswitch_95
        0xe13d -> :sswitch_96
        0xe13e -> :sswitch_97
        0xe13f -> :sswitch_98
        0xe140 -> :sswitch_99
        0xe141 -> :sswitch_9a
        0xe142 -> :sswitch_9b
        0xe143 -> :sswitch_9c
        0xe144 -> :sswitch_9d
        0xe145 -> :sswitch_9e
        0xe146 -> :sswitch_9f
        0xe147 -> :sswitch_a0
        0xe148 -> :sswitch_a1
        0xe149 -> :sswitch_a2
        0xe14a -> :sswitch_a3
        0xe14b -> :sswitch_a4
        0xe14c -> :sswitch_a5
        0xe14d -> :sswitch_a6
        0xe14e -> :sswitch_a7
        0xe14f -> :sswitch_a8
        0xe150 -> :sswitch_a9
        0xe151 -> :sswitch_aa
        0xe152 -> :sswitch_ab
        0xe153 -> :sswitch_ac
        0xe154 -> :sswitch_ad
        0xe155 -> :sswitch_ae
        0xe156 -> :sswitch_af
        0xe157 -> :sswitch_b0
        0xe158 -> :sswitch_b1
        0xe159 -> :sswitch_b2
        0xe15a -> :sswitch_b3
        0xe201 -> :sswitch_b4
        0xe202 -> :sswitch_b5
        0xe203 -> :sswitch_b6
        0xe204 -> :sswitch_b7
        0xe205 -> :sswitch_b8
        0xe206 -> :sswitch_b9
        0xe207 -> :sswitch_ba
        0xe208 -> :sswitch_bb
        0xe209 -> :sswitch_bc
        0xe20a -> :sswitch_bd
        0xe20b -> :sswitch_be
        0xe20c -> :sswitch_bf
        0xe20d -> :sswitch_c0
        0xe20e -> :sswitch_c1
        0xe20f -> :sswitch_c2
        0xe210 -> :sswitch_c3
        0xe211 -> :sswitch_c4
        0xe212 -> :sswitch_c5
        0xe213 -> :sswitch_c6
        0xe214 -> :sswitch_c7
        0xe215 -> :sswitch_c8
        0xe216 -> :sswitch_c9
        0xe217 -> :sswitch_ca
        0xe218 -> :sswitch_cb
        0xe219 -> :sswitch_cc
        0xe21a -> :sswitch_cd
        0xe21b -> :sswitch_ce
        0xe21c -> :sswitch_cf
        0xe21d -> :sswitch_d0
        0xe21e -> :sswitch_d1
        0xe21f -> :sswitch_d2
        0xe220 -> :sswitch_d3
        0xe221 -> :sswitch_d4
        0xe222 -> :sswitch_d5
        0xe223 -> :sswitch_d6
        0xe224 -> :sswitch_d7
        0xe225 -> :sswitch_d8
        0xe226 -> :sswitch_d9
        0xe227 -> :sswitch_da
        0xe228 -> :sswitch_db
        0xe229 -> :sswitch_dc
        0xe22a -> :sswitch_dd
        0xe22b -> :sswitch_de
        0xe22c -> :sswitch_df
        0xe22d -> :sswitch_e0
        0xe22e -> :sswitch_e1
        0xe22f -> :sswitch_e2
        0xe230 -> :sswitch_e3
        0xe231 -> :sswitch_e4
        0xe232 -> :sswitch_e5
        0xe233 -> :sswitch_e6
        0xe234 -> :sswitch_e7
        0xe235 -> :sswitch_e8
        0xe236 -> :sswitch_e9
        0xe237 -> :sswitch_ea
        0xe238 -> :sswitch_eb
        0xe239 -> :sswitch_ec
        0xe23a -> :sswitch_ed
        0xe23b -> :sswitch_ee
        0xe23c -> :sswitch_ef
        0xe23d -> :sswitch_f0
        0xe23e -> :sswitch_f1
        0xe23f -> :sswitch_f2
        0xe240 -> :sswitch_f3
        0xe241 -> :sswitch_f4
        0xe242 -> :sswitch_f5
        0xe243 -> :sswitch_f6
        0xe244 -> :sswitch_f7
        0xe245 -> :sswitch_f8
        0xe246 -> :sswitch_f9
        0xe247 -> :sswitch_fa
        0xe248 -> :sswitch_fb
        0xe249 -> :sswitch_fc
        0xe24a -> :sswitch_fd
        0xe24b -> :sswitch_fe
        0xe24c -> :sswitch_ff
        0xe24d -> :sswitch_100
        0xe24e -> :sswitch_101
        0xe24f -> :sswitch_102
        0xe250 -> :sswitch_103
        0xe251 -> :sswitch_104
        0xe252 -> :sswitch_105
        0xe253 -> :sswitch_106
        0xe254 -> :sswitch_107
        0xe255 -> :sswitch_108
        0xe256 -> :sswitch_109
        0xe257 -> :sswitch_10a
        0xe258 -> :sswitch_10b
        0xe259 -> :sswitch_10c
        0xe25a -> :sswitch_10d
        0xe301 -> :sswitch_10e
        0xe302 -> :sswitch_10f
        0xe303 -> :sswitch_110
        0xe304 -> :sswitch_111
        0xe305 -> :sswitch_112
        0xe306 -> :sswitch_113
        0xe307 -> :sswitch_114
        0xe308 -> :sswitch_115
        0xe309 -> :sswitch_116
        0xe30a -> :sswitch_117
        0xe30b -> :sswitch_118
        0xe30c -> :sswitch_119
        0xe30d -> :sswitch_11a
        0xe30e -> :sswitch_11b
        0xe30f -> :sswitch_11c
        0xe310 -> :sswitch_11d
        0xe311 -> :sswitch_11e
        0xe312 -> :sswitch_11f
        0xe313 -> :sswitch_120
        0xe314 -> :sswitch_121
        0xe315 -> :sswitch_122
        0xe316 -> :sswitch_123
        0xe317 -> :sswitch_124
        0xe318 -> :sswitch_125
        0xe319 -> :sswitch_126
        0xe31a -> :sswitch_127
        0xe31b -> :sswitch_128
        0xe31c -> :sswitch_129
        0xe31d -> :sswitch_12a
        0xe31e -> :sswitch_12b
        0xe31f -> :sswitch_12c
        0xe320 -> :sswitch_12d
        0xe321 -> :sswitch_12e
        0xe322 -> :sswitch_12f
        0xe323 -> :sswitch_130
        0xe324 -> :sswitch_131
        0xe325 -> :sswitch_132
        0xe326 -> :sswitch_133
        0xe327 -> :sswitch_134
        0xe328 -> :sswitch_135
        0xe329 -> :sswitch_136
        0xe32a -> :sswitch_137
        0xe32b -> :sswitch_138
        0xe32c -> :sswitch_139
        0xe32d -> :sswitch_13a
        0xe32e -> :sswitch_13b
        0xe32f -> :sswitch_13c
        0xe330 -> :sswitch_13d
        0xe331 -> :sswitch_13e
        0xe332 -> :sswitch_13f
        0xe333 -> :sswitch_140
        0xe334 -> :sswitch_141
        0xe335 -> :sswitch_142
        0xe336 -> :sswitch_143
        0xe337 -> :sswitch_144
        0xe338 -> :sswitch_145
        0xe339 -> :sswitch_146
        0xe33a -> :sswitch_147
        0xe33b -> :sswitch_148
        0xe33c -> :sswitch_149
        0xe33d -> :sswitch_14a
        0xe33e -> :sswitch_14b
        0xe33f -> :sswitch_14c
        0xe340 -> :sswitch_14d
        0xe341 -> :sswitch_14e
        0xe342 -> :sswitch_14f
        0xe343 -> :sswitch_150
        0xe344 -> :sswitch_151
        0xe345 -> :sswitch_152
        0xe346 -> :sswitch_153
        0xe347 -> :sswitch_154
        0xe348 -> :sswitch_155
        0xe349 -> :sswitch_156
        0xe34a -> :sswitch_157
        0xe34b -> :sswitch_158
        0xe34c -> :sswitch_159
        0xe34d -> :sswitch_15a
        0xe401 -> :sswitch_15b
        0xe402 -> :sswitch_15c
        0xe403 -> :sswitch_15d
        0xe404 -> :sswitch_15e
        0xe405 -> :sswitch_15f
        0xe406 -> :sswitch_160
        0xe407 -> :sswitch_161
        0xe408 -> :sswitch_162
        0xe409 -> :sswitch_163
        0xe40a -> :sswitch_164
        0xe40b -> :sswitch_165
        0xe40c -> :sswitch_166
        0xe40d -> :sswitch_167
        0xe40e -> :sswitch_168
        0xe40f -> :sswitch_169
        0xe410 -> :sswitch_16a
        0xe411 -> :sswitch_16b
        0xe412 -> :sswitch_16c
        0xe413 -> :sswitch_16d
        0xe414 -> :sswitch_16e
        0xe415 -> :sswitch_16f
        0xe416 -> :sswitch_170
        0xe417 -> :sswitch_171
        0xe418 -> :sswitch_172
        0xe419 -> :sswitch_173
        0xe41a -> :sswitch_174
        0xe41b -> :sswitch_175
        0xe41c -> :sswitch_176
        0xe41d -> :sswitch_177
        0xe41e -> :sswitch_178
        0xe41f -> :sswitch_179
        0xe420 -> :sswitch_17a
        0xe421 -> :sswitch_17b
        0xe422 -> :sswitch_17c
        0xe423 -> :sswitch_17d
        0xe424 -> :sswitch_17e
        0xe425 -> :sswitch_17f
        0xe426 -> :sswitch_180
        0xe427 -> :sswitch_181
        0xe428 -> :sswitch_182
        0xe429 -> :sswitch_183
        0xe42a -> :sswitch_184
        0xe42b -> :sswitch_185
        0xe42c -> :sswitch_186
        0xe42d -> :sswitch_187
        0xe42e -> :sswitch_188
        0xe42f -> :sswitch_189
        0xe430 -> :sswitch_18a
        0xe431 -> :sswitch_18b
        0xe432 -> :sswitch_18c
        0xe433 -> :sswitch_18d
        0xe434 -> :sswitch_18e
        0xe435 -> :sswitch_18f
        0xe436 -> :sswitch_190
        0xe437 -> :sswitch_191
        0xe438 -> :sswitch_192
        0xe439 -> :sswitch_193
        0xe43a -> :sswitch_194
        0xe43b -> :sswitch_195
        0xe43c -> :sswitch_196
        0xe43d -> :sswitch_197
        0xe43e -> :sswitch_198
        0xe43f -> :sswitch_199
        0xe440 -> :sswitch_19a
        0xe441 -> :sswitch_19b
        0xe442 -> :sswitch_19c
        0xe443 -> :sswitch_19d
        0xe444 -> :sswitch_19e
        0xe445 -> :sswitch_19f
        0xe446 -> :sswitch_1a0
        0xe447 -> :sswitch_1a1
        0xe448 -> :sswitch_1a2
        0xe449 -> :sswitch_1a3
        0xe44a -> :sswitch_1a4
        0xe44b -> :sswitch_1a5
        0xe44c -> :sswitch_1a6
        0xe501 -> :sswitch_1a7
        0xe502 -> :sswitch_1a8
        0xe503 -> :sswitch_1a9
        0xe504 -> :sswitch_1aa
        0xe505 -> :sswitch_1ab
        0xe506 -> :sswitch_1ac
        0xe507 -> :sswitch_1ad
        0xe508 -> :sswitch_1ae
        0xe509 -> :sswitch_1af
        0xe50a -> :sswitch_1b0
        0xe50b -> :sswitch_1b1
        0xe50c -> :sswitch_1b2
        0xe50d -> :sswitch_1b3
        0xe50e -> :sswitch_1b4
        0xe50f -> :sswitch_1b5
        0xe510 -> :sswitch_1b6
        0xe511 -> :sswitch_1b7
        0xe512 -> :sswitch_1b8
        0xe513 -> :sswitch_1b9
        0xe514 -> :sswitch_1ba
        0xe515 -> :sswitch_1bb
        0xe516 -> :sswitch_1bc
        0xe517 -> :sswitch_1bd
        0xe518 -> :sswitch_1be
        0xe519 -> :sswitch_1bf
        0xe51a -> :sswitch_1c0
        0xe51b -> :sswitch_1c1
        0xe51c -> :sswitch_1c2
        0xe51d -> :sswitch_1c3
        0xe51e -> :sswitch_1c4
        0xe51f -> :sswitch_1c5
        0xe520 -> :sswitch_1c6
        0xe521 -> :sswitch_1c7
        0xe522 -> :sswitch_1c8
        0xe523 -> :sswitch_1c9
        0xe524 -> :sswitch_1ca
        0xe525 -> :sswitch_1cb
        0xe526 -> :sswitch_1cc
        0xe527 -> :sswitch_1cd
        0xe528 -> :sswitch_1ce
        0xe529 -> :sswitch_1cf
        0xe52a -> :sswitch_1d0
        0xe52b -> :sswitch_1d1
        0xe52c -> :sswitch_1d2
        0xe52d -> :sswitch_1d3
        0xe52e -> :sswitch_1d4
        0xe52f -> :sswitch_1d5
        0xe530 -> :sswitch_1d6
        0xe531 -> :sswitch_1d7
        0xe532 -> :sswitch_1d8
        0xe533 -> :sswitch_1d9
        0xe534 -> :sswitch_1da
        0xe535 -> :sswitch_1db
        0xe536 -> :sswitch_1dc
        0xe537 -> :sswitch_1dd
        0xe538 -> :sswitch_1de
        0xe539 -> :sswitch_1df
        0xe53a -> :sswitch_1e0
        0xe53b -> :sswitch_1e1
        0xe53c -> :sswitch_1e2
        0xe53d -> :sswitch_1e3
        0xe53e -> :sswitch_1e4
    .end sparse-switch
.end method

.method public static a(Lvq;)I
    .locals 4
    .param p0, "part"    # Lvq;

    .prologue
    const/4 v3, -0x1

    .line 917
    if-nez p0, :cond_1

    .line 943
    :cond_0
    :goto_0
    return v3

    .line 5010
    :cond_1
    iget-object v2, p0, Lvq;->d:Lvr;

    .line 922
    .local v2, "multipart":Lvr;
    if-eqz v2, :cond_0

    .line 926
    invoke-virtual {v2}, Lvr;->b()Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 928
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, "formatType":Ljava/lang/String;
    const-string/jumbo v3, "multipart/related"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 931
    const/4 v3, 0x1

    goto :goto_0

    .line 934
    :cond_2
    const-string/jumbo v3, "multipart/alternative"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 935
    const/4 v3, 0x2

    goto :goto_0

    .line 938
    :cond_3
    const-string/jumbo v3, "multipart/signed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 939
    const/4 v3, 0x3

    goto :goto_0

    .line 943
    .end local v1    # "formatType":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 948
    if-nez p0, :cond_0

    .line 950
    const/4 v0, 0x0

    .line 952
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "\r|\n"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 1399
    invoke-static {p0}, Lvj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lvj;->c(Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 1421
    if-nez p0, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return-object v0

    .line 1425
    :cond_1
    const-string/jumbo v5, "\r|\n"

    const-string/jumbo v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1426
    const-string/jumbo v5, ";"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1427
    .local v3, "parts":[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 1429
    aget-object v0, v3, v4

    goto :goto_0

    .line 1431
    :cond_2
    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v3, v4

    .line 1433
    .local v1, "part":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1435
    const-string/jumbo v6, "="

    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1437
    .local v2, "partSplits":[Ljava/lang/String;
    array-length v6, v2

    if-le v6, v8, :cond_3

    .line 1438
    aget-object v4, v2, v8

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1439
    .local v0, "parameter":Ljava/lang/String;
    const-string/jumbo v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_0

    .line 1441
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1431
    .end local v0    # "parameter":Ljava/lang/String;
    .end local v2    # "partSplits":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static a(Lvs;)Ljava/lang/String;
    .locals 11
    .param p0, "part"    # Lvs;

    .prologue
    const/4 v8, 0x0

    .line 1533
    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Lvs;->a()Lvp;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1535
    invoke-interface {p0}, Lvs;->a()Lvp;

    move-result-object v0

    .line 1536
    .local v0, "body":Lvp;
    instance-of v7, v0, Lvn;

    if-eqz v7, :cond_0

    .line 1538
    check-cast v0, Lvn;

    .line 8061
    .end local v0    # "body":Lvp;
    iget-object v6, v0, Lvn;->a:Ljava/lang/String;

    .line 1584
    :goto_0
    return-object v6

    .line 1541
    .restart local v0    # "body":Lvp;
    :cond_0
    invoke-interface {p0}, Lvs;->e()Ljava/lang/String;

    move-result-object v4

    .line 1542
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string/jumbo v7, "text/*"

    invoke-static {v4, v7}, Lvj;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1547
    invoke-interface {p0}, Lvs;->b()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "charset"

    invoke-static {v7, v9}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "charset":Ljava/lang/String;
    move-object v7, p0

    .line 8733
    :goto_1
    if-eqz v7, :cond_3

    .line 8735
    instance-of v9, v7, Lcom/alibaba/alimei/emailcommon/mail/Message;

    if-eqz v9, :cond_2

    .line 8736
    check-cast v7, Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 1548
    :goto_2
    invoke-static {v1, v7}, Lvj;->b(Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v1

    .line 1554
    invoke-interface {p0}, Lvs;->a()Lvp;

    move-result-object v7

    invoke-interface {v7}, Lvp;->f_()Ljava/io/InputStream;

    move-result-object v3

    .line 1555
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_4

    .line 1556
    invoke-static {v3, v1}, Lvj;->b(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1557
    .local v6, "result":Ljava/lang/String;
    invoke-static {v3}, Lkpv;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1564
    .end local v0    # "body":Lvp;
    .end local v1    # "charset":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1570
    .local v5, "oom":Ljava/lang/OutOfMemoryError;
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1571
    sget-object v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Unable to getTextFromPart "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_1
    :goto_3
    move-object v6, v8

    .line 1584
    goto :goto_0

    .line 8738
    .restart local v0    # "body":Lvp;
    .restart local v1    # "charset":Ljava/lang/String;
    .restart local v4    # "mimeType":Ljava/lang/String;
    :cond_2
    :try_start_1
    instance-of v9, v7, Lvq;

    if-eqz v9, :cond_3

    .line 8741
    check-cast v7, Lvq;

    .line 9010
    iget-object v7, v7, Lvq;->d:Lvr;

    .line 8742
    if-eqz v7, :cond_3

    .line 8745
    invoke-virtual {v7}, Lvr;->d()Lvs;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v7, v8

    .line 8747
    goto :goto_2

    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_4
    move-object v6, v8

    .line 1560
    goto :goto_0

    .line 1574
    .end local v0    # "body":Lvp;
    .end local v1    # "charset":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "mimeType":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1580
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1581
    sget-object v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Unable to getTextFromPart"

    invoke-static {v7, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private static a(Lvj$h;ZLvj$e;)Ljava/lang/StringBuilder;
    .locals 11
    .param p0, "viewable"    # Lvj$h;
    .param p1, "prependDivider"    # Z
    .param p2, "htmlPartId"    # Lvj$e;

    .prologue
    .line 1916
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1917
    .local v4, "html":Ljava/lang/StringBuilder;
    instance-of v9, p0, Lvj$g;

    if-eqz v9, :cond_4

    .line 1918
    check-cast p0, Lvj$g;

    .line 15970
    .end local p0    # "viewable":Lvj$h;
    iget-object v7, p0, Lvj$g;->a:Lvs;

    .line 1919
    .local v7, "part":Lvs;
    invoke-static {v4, v7, p1}, Lvj;->a(Ljava/lang/StringBuilder;Lvs;Z)V

    .line 1921
    invoke-static {v7}, Lvj;->a(Lvs;)Ljava/lang/String;

    move-result-object v8

    .line 1923
    .local v8, "t":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 1924
    const-string/jumbo v8, ""

    .line 1926
    :cond_0
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    :try_start_0
    const-string/jumbo v9, "X-Android-Attachment-StoreData"

    invoke-interface {v7, v9}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1930
    .local v3, "headers":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v9, v3

    if-lez v9, :cond_1

    .line 1931
    const/4 v9, 0x0

    aget-object v9, v3, v9

    .line 16936
    iput-object v9, p2, Lvj$e;->a:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    .end local v3    # "headers":[Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_1
    const-string/jumbo v9, "Content-Transfer-Encoding"

    invoke-interface {v7, v9}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1939
    .restart local v3    # "headers":[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v9, v3

    if-lez v9, :cond_2

    .line 1940
    const/4 v9, 0x0

    aget-object v9, v3, v9

    .line 16944
    iput-object v9, p2, Lvj$e;->b:Ljava/lang/String;
    :try_end_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1947
    .end local v3    # "headers":[Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_2
    const-string/jumbo v9, "Content-Type"

    invoke-interface {v7, v9}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1948
    .restart local v3    # "headers":[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v9, v3

    if-lez v9, :cond_3

    .line 1949
    const/4 v9, 0x0

    aget-object v9, v3, v9

    .line 16952
    iput-object v9, p2, Lvj$e;->c:Ljava/lang/String;
    :try_end_2
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1970
    .end local v3    # "headers":[Ljava/lang/String;
    .end local v7    # "part":Lvs;
    .end local v8    # "t":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v4

    .line 1933
    .restart local v7    # "part":Lvs;
    .restart local v8    # "t":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1934
    .local v2, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_0

    .line 1942
    .end local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v2

    .line 1943
    .restart local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_1

    .line 1951
    .end local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catch_2
    move-exception v2

    .line 1952
    .restart local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_2

    .line 1954
    .end local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v7    # "part":Lvs;
    .end local v8    # "t":Ljava/lang/String;
    .restart local p0    # "viewable":Lvj$h;
    :cond_4
    instance-of v9, p0, Lvj$a;

    if-eqz v9, :cond_3

    move-object v0, p0

    .line 1958
    check-cast v0, Lvj$a;

    .line 17048
    .local v0, "alternative":Lvj$a;
    iget-object v9, v0, Lvj$a;->b:Ljava/util/List;

    .line 1960
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 18044
    iget-object v5, v0, Lvj$a;->a:Ljava/util/List;

    .line 1963
    .local v5, "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    :goto_3
    move v1, p1

    .line 1964
    .local v1, "divider":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvj$h;

    .line 1965
    .local v6, "htmlViewable":Lvj$h;
    invoke-static {v6, v1, p2}, Lvj;->a(Lvj$h;ZLvj$e;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1966
    const/4 v1, 0x1

    .line 1967
    goto :goto_4

    .line 18048
    .end local v1    # "divider":Z
    .end local v5    # "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .end local v6    # "htmlViewable":Lvj$h;
    :cond_5
    iget-object v5, v0, Lvj$a;->b:Ljava/util/List;

    goto :goto_3
.end method

.method private static a(Lvr;Ljava/util/Set;Ljava/util/List;Z)Ljava/util/List;
    .locals 11
    .param p0, "multipart"    # Lvr;
    .param p3, "directChild"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvr;",
            "Ljava/util/Set",
            "<",
            "Lvs;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lvs;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lvj$h;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2426
    .local p1, "knownTextParts":Ljava/util/Set;, "Ljava/util/Set<Lvs;>;"
    .local p2, "attachments":Ljava/util/List;, "Ljava/util/List<Lvs;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2428
    .local v8, "viewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    const/4 v7, 0x0

    .line 2429
    .local v7, "partFound":Z
    invoke-virtual {p0}, Lvr;->c()I

    move-result v1

    .line 2430
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_5

    .line 2431
    invoke-virtual {p0, v4}, Lvr;->a(I)Lvq;

    move-result-object v6

    .line 2432
    .local v6, "part":Lvs;
    invoke-interface {v6}, Lvs;->a()Lvp;

    move-result-object v0

    .line 2433
    .local v0, "body":Lvp;
    instance-of v9, v0, Lvr;

    if-eqz v9, :cond_2

    move-object v5, v0

    .line 2434
    check-cast v5, Lvr;

    .line 2436
    .local v5, "innerMultipart":Lvr;
    if-eqz p3, :cond_1

    if-eqz v7, :cond_1

    .line 2439
    invoke-static {v5, p1, p2}, Lvj;->a(Lvr;Ljava/util/Set;Ljava/util/List;)V

    .line 2430
    .end local v5    # "innerMultipart":Lvr;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2451
    .restart local v5    # "innerMultipart":Lvr;
    :cond_1
    const/4 v9, 0x0

    invoke-static {v5, p1, p2, v9}, Lvj;->a(Lvr;Ljava/util/Set;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 2454
    .local v3, "htmlViewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2455
    const/4 v7, 0x1

    .line 2456
    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2459
    .end local v3    # "htmlViewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .end local v5    # "innerMultipart":Lvr;
    :cond_2
    if-eqz p3, :cond_3

    if-nez v7, :cond_4

    :cond_3
    invoke-static {v6}, Lvj;->d(Lvs;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2460
    invoke-interface {v6}, Lvs;->e()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "text/html"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2461
    new-instance v2, Lvj$c;

    invoke-direct {v2, v6}, Lvj$c;-><init>(Lvs;)V

    .line 2462
    .local v2, "html":Lvj$c;
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2463
    const/4 v7, 0x1

    .line 2464
    goto :goto_1

    .end local v2    # "html":Lvj$c;
    :cond_4
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2468
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2472
    .end local v0    # "body":Lvp;
    .end local v6    # "part":Lvs;
    :cond_5
    return-object v8
.end method

.method private static a(Lvr;Z)Ljava/util/List;
    .locals 10
    .param p0, "multipart"    # Lvr;
    .param p1, "directChild"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvr;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lvj$h;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2547
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2549
    .local v7, "viewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    invoke-virtual {p0}, Lvr;->c()I

    move-result v1

    .line 2550
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2551
    invoke-virtual {p0, v2}, Lvr;->a(I)Lvq;

    move-result-object v4

    .line 2552
    .local v4, "part":Lvs;
    invoke-interface {v4}, Lvs;->a()Lvp;

    move-result-object v0

    .line 2553
    .local v0, "body":Lvp;
    instance-of v8, v0, Lvr;

    if-eqz v8, :cond_1

    move-object v3, v0

    .line 2554
    check-cast v3, Lvr;

    .line 2565
    .local v3, "innerMultipart":Lvr;
    const/4 v8, 0x0

    invoke-static {v3, v8}, Lvj;->a(Lvr;Z)Ljava/util/List;

    move-result-object v6

    .line 2568
    .local v6, "textViewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2569
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2570
    if-nez p1, :cond_2

    .line 2550
    .end local v3    # "innerMultipart":Lvr;
    .end local v6    # "textViewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2574
    :cond_1
    invoke-static {v4}, Lvj;->d(Lvs;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2575
    invoke-interface {v4}, Lvs;->e()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2576
    new-instance v5, Lvj$f;

    invoke-direct {v5, v4}, Lvj$f;-><init>(Lvs;)V

    .line 2577
    .local v5, "text":Lvj$f;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2578
    if-eqz p1, :cond_0

    .line 2584
    .end local v0    # "body":Lvp;
    .end local v4    # "part":Lvs;
    .end local v5    # "text":Lvj$f;
    :cond_2
    return-object v7
.end method

.method private static a(Lvs;Ljava/util/List;)Ljava/util/List;
    .locals 21
    .param p0, "part"    # Lvs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvs;",
            "Ljava/util/List",
            "<",
            "Lvs;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lvj$h;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2327
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lvs;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2329
    .local v18, "viewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    invoke-interface/range {p0 .. p0}, Lvs;->a()Lvp;

    move-result-object v3

    .line 2330
    .local v3, "body":Lvp;
    instance-of v0, v3, Lvr;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object v15, v3

    .line 2331
    check-cast v15, Lvr;

    .line 2332
    .local v15, "multipart":Lvr;
    invoke-interface/range {p0 .. p0}, Lvs;->e()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "multipart/alternative"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2338
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v15, v0}, Lvj;->a(Lvr;Z)Ljava/util/List;

    move-result-object v17

    .line 2339
    .local v17, "text":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    invoke-static/range {v17 .. v17}, Lvj;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v12

    .line 2341
    .local v12, "knownTextParts":Ljava/util/Set;, "Ljava/util/Set<Lvs;>;"
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v15, v0}, Lvj;->b(Lvr;Z)Ljava/util/List;

    move-result-object v6

    .line 2342
    .local v6, "calendar":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    invoke-static {v6}, Lvj;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v7

    .line 2343
    .local v7, "calnedarKnownTextParts":Ljava/util/Set;, "Ljava/util/Set<Lvs;>;"
    invoke-interface {v12, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2345
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v15, v12, v0, v1}, Lvj;->a(Lvr;Ljava/util/Set;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v10

    .line 2348
    .local v10, "html":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    .line 2349
    :cond_0
    new-instance v2, Lvj$a;

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v10, v6}, Lvj$a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2350
    .local v2, "alternative":Lvj$a;
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2395
    .end local v2    # "alternative":Lvj$a;
    .end local v6    # "calendar":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .end local v7    # "calnedarKnownTextParts":Ljava/util/Set;, "Ljava/util/Set<Lvs;>;"
    .end local v10    # "html":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .end local v12    # "knownTextParts":Ljava/util/Set;, "Ljava/util/Set<Lvs;>;"
    .end local v15    # "multipart":Lvr;
    .end local v17    # "text":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    :cond_1
    :goto_0
    return-object v18

    .line 2355
    .restart local v15    # "multipart":Lvr;
    :cond_2
    invoke-virtual {v15}, Lvr;->c()I

    move-result v8

    .line 2356
    .local v8, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_1

    .line 2357
    invoke-virtual {v15, v11}, Lvr;->a(I)Lvq;

    move-result-object v4

    .line 2358
    .local v4, "bodyPart":Lvs;
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lvj;->a(Lvs;Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2356
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2361
    .end local v4    # "bodyPart":Lvs;
    .end local v8    # "childCount":I
    .end local v11    # "i":I
    .end local v15    # "multipart":Lvr;
    :cond_3
    instance-of v0, v3, Lcom/alibaba/alimei/emailcommon/mail/Message;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    const-string/jumbo v19, "attachment"

    .line 2362
    invoke-static/range {p0 .. p0}, Lvj;->c(Lvs;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    move-object v13, v3

    .line 2367
    check-cast v13, Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 2370
    .local v13, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    new-instance v19, Lvj$d;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lvj$d;-><init>(Lvs;Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2374
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lvj;->a(Lvs;Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2375
    .end local v13    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_4
    invoke-static/range {p0 .. p0}, Lvj;->d(Lvs;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2379
    invoke-interface/range {p0 .. p0}, Lvs;->e()Ljava/lang/String;

    move-result-object v14

    .line 2380
    .local v14, "mimeType":Ljava/lang/String;
    const-string/jumbo v19, "text/calendar"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2381
    new-instance v5, Lvj$b;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lvj$b;-><init>(Lvs;)V

    .line 2382
    .local v5, "calendar":Lvj$b;
    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2383
    .end local v5    # "calendar":Lvj$b;
    :cond_5
    const-string/jumbo v19, "text/plain"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2384
    new-instance v16, Lvj$f;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lvj$f;-><init>(Lvs;)V

    .line 2385
    .local v16, "text":Lvj$f;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2387
    .end local v16    # "text":Lvj$f;
    :cond_6
    new-instance v9, Lvj$c;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lvj$c;-><init>(Lvs;)V

    .line 2388
    .local v9, "html":Lvj$c;
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2392
    .end local v9    # "html":Lvj$c;
    .end local v14    # "mimeType":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lvj$h;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lvs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2516
    .local p0, "viewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2518
    .local v1, "parts":Ljava/util/Set;, "Ljava/util/Set<Lvs;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvj$h;

    .line 2519
    .local v2, "viewable":Lvj$h;
    instance-of v4, v2, Lvj$g;

    if-eqz v4, :cond_1

    .line 2520
    check-cast v2, Lvj$g;

    .line 24970
    .end local v2    # "viewable":Lvj$h;
    iget-object v4, v2, Lvj$g;->a:Lvs;

    .line 2520
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2521
    .restart local v2    # "viewable":Lvj$h;
    :cond_1
    instance-of v4, v2, Lvj$a;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 2522
    check-cast v0, Lvj$a;

    .line 25044
    .local v0, "alternative":Lvj$a;
    iget-object v4, v0, Lvj$a;->a:Ljava/util/List;

    .line 2523
    invoke-static {v4}, Lvj;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 25048
    iget-object v4, v0, Lvj$a;->b:Ljava/util/List;

    .line 2524
    invoke-static {v4}, Lvj;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2528
    .end local v0    # "alternative":Lvj$a;
    .end local v2    # "viewable":Lvj$h;
    :cond_2
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/emailcommon/mail/Message;)Lvj$i;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1640
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1643
    .local v8, "attachments":Ljava/util/List;, "Ljava/util/List<Lvs;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lvj;->a(Lvs;Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    .line 1650
    .local v26, "viewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    const/16 v17, 0x1

    .line 1652
    .local v17, "hideDivider":Z
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1653
    .local v22, "text":Ljava/lang/StringBuilder;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1654
    .local v18, "html":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1656
    .local v10, "calendar":Ljava/lang/StringBuilder;
    new-instance v5, Lvj$e;

    invoke-direct {v5}, Lvj$e;-><init>()V

    .line 1657
    .local v5, "textPartId":Lvj$e;
    new-instance v6, Lvj$e;

    invoke-direct {v6}, Lvj$e;-><init>()V

    .line 1658
    .local v6, "htmlPartId":Lvj$e;
    new-instance v7, Lvj$e;

    invoke-direct {v7}, Lvj$e;-><init>()V

    .line 1659
    .local v7, "calednarId":Lvj$e;
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lvj$h;

    .line 1660
    .local v25, "viewable":Lvj$h;
    move-object/from16 v0, v25

    instance-of v1, v0, Lvj$c;

    if-eqz v1, :cond_3

    .line 9932
    iget-object v1, v6, Lvj$e;->a:Ljava/lang/String;

    .line 1662
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1663
    if-nez v17, :cond_2

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, v25

    invoke-static {v0, v1, v6}, Lvj;->a(Lvj$h;ZLvj$e;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1665
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 1663
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1666
    :cond_3
    move-object/from16 v0, v25

    instance-of v1, v0, Lvj$f;

    if-eqz v1, :cond_6

    .line 10932
    iget-object v1, v5, Lvj$e;->a:Ljava/lang/String;

    .line 1668
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1669
    if-nez v17, :cond_5

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, v25

    invoke-static {v0, v1, v5}, Lvj;->c(Lvj$h;ZLvj$e;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1671
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 1669
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 1672
    :cond_6
    move-object/from16 v0, v25

    instance-of v1, v0, Lvj$b;

    if-eqz v1, :cond_9

    .line 11932
    iget-object v1, v7, Lvj$e;->a:Ljava/lang/String;

    .line 1674
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1675
    if-nez v17, :cond_8

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, v25

    invoke-static {v0, v1, v7}, Lvj;->b(Lvj$h;ZLvj$e;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1677
    :cond_7
    const/16 v17, 0x0

    goto :goto_0

    .line 1675
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 1678
    :cond_9
    move-object/from16 v0, v25

    instance-of v1, v0, Lvj$d;

    if-eqz v1, :cond_16

    .line 1679
    move-object/from16 v0, v25

    check-cast v0, Lvj$d;

    move-object/from16 v16, v0

    .line 12016
    .local v16, "header":Lvj$d;
    move-object/from16 v0, v16

    iget-object v13, v0, Lvj$d;->a:Lvs;

    .line 12020
    .local v13, "containerPart":Lvs;
    move-object/from16 v0, v16

    iget-object v0, v0, Lvj$d;->b:Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-object/from16 v21, v0

    .line 1683
    .local v21, "innerMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    if-nez v17, :cond_13

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, v22

    invoke-static {v0, v13, v1}, Lvj;->b(Ljava/lang/StringBuilder;Lvs;Z)V

    .line 12765
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/emailcommon/mail/Message;->j()[Lvo;

    move-result-object v1

    .line 12766
    if-eqz v1, :cond_a

    array-length v3, v1

    if-lez v3, :cond_a

    .line 12767
    const-string/jumbo v3, "\u53d1\u4ef6\u4eba:"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12768
    const/16 v3, 0x20

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12769
    invoke-static {v1}, Lvo;->a([Lvo;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12770
    const-string/jumbo v1, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12774
    :cond_a
    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->TO:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;

    move-result-object v1

    .line 12775
    if-eqz v1, :cond_b

    array-length v3, v1

    if-lez v3, :cond_b

    .line 12776
    const-string/jumbo v3, "\u6536\u4ef6\u4eba:"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12777
    const/16 v3, 0x20

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12778
    invoke-static {v1}, Lvo;->a([Lvo;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12779
    const-string/jumbo v1, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12783
    :cond_b
    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->CC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;

    move-result-object v1

    .line 12784
    if-eqz v1, :cond_c

    array-length v3, v1

    if-lez v3, :cond_c

    .line 12785
    const-string/jumbo v3, "\u6284\u9001:"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12786
    const/16 v3, 0x20

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12787
    invoke-static {v1}, Lvo;->a([Lvo;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12788
    const-string/jumbo v1, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12792
    :cond_c
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/emailcommon/mail/Message;->h()Ljava/util/Date;

    move-result-object v1

    .line 12793
    if-eqz v1, :cond_d

    .line 12794
    const-string/jumbo v3, "\u53d1\u4ef6\u65f6\u95f4:"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12795
    const/16 v3, 0x20

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12796
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12797
    const-string/jumbo v1, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12801
    :cond_d
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/emailcommon/mail/Message;->i()Ljava/lang/String;

    move-result-object v1

    .line 12802
    const-string/jumbo v3, "\u6807\u9898:"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12803
    const/16 v3, 0x20

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12804
    if-nez v1, :cond_14

    .line 12805
    const-string/jumbo v1, "\u65e0\u6807\u9898"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12809
    :goto_5
    const-string/jumbo v1, "\n\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    if-nez v17, :cond_15

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, v18

    invoke-static {v0, v13, v1}, Lvj;->a(Ljava/lang/StringBuilder;Lvs;Z)V

    .line 12830
    const-string/jumbo v1, "<table style=\"border: 0\">"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12834
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/emailcommon/mail/Message;->j()[Lvo;

    move-result-object v1

    .line 12835
    if-eqz v1, :cond_e

    array-length v3, v1

    if-lez v3, :cond_e

    .line 12836
    const-string/jumbo v3, "\u53d1\u4ef6\u4eba"

    .line 12838
    invoke-static {v1}, Lvo;->a([Lvo;)Ljava/lang/String;

    move-result-object v1

    .line 12836
    move-object/from16 v0, v18

    invoke-static {v0, v3, v1}, Lvj;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 12842
    :cond_e
    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->TO:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;

    move-result-object v1

    .line 12843
    if-eqz v1, :cond_f

    array-length v3, v1

    if-lez v3, :cond_f

    .line 12844
    const-string/jumbo v3, "\u6536\u4ef6\u4eba"

    .line 12846
    invoke-static {v1}, Lvo;->a([Lvo;)Ljava/lang/String;

    move-result-object v1

    .line 12844
    move-object/from16 v0, v18

    invoke-static {v0, v3, v1}, Lvj;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 12850
    :cond_f
    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->CC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;

    move-result-object v1

    .line 12851
    if-eqz v1, :cond_10

    array-length v3, v1

    if-lez v3, :cond_10

    .line 12852
    const-string/jumbo v3, "\u6284\u9001"

    .line 12854
    invoke-static {v1}, Lvo;->a([Lvo;)Ljava/lang/String;

    move-result-object v1

    .line 12852
    move-object/from16 v0, v18

    invoke-static {v0, v3, v1}, Lvj;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 12858
    :cond_10
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/emailcommon/mail/Message;->h()Ljava/util/Date;

    move-result-object v1

    .line 12859
    if-eqz v1, :cond_11

    .line 12860
    const-string/jumbo v3, "\u53d1\u4ef6\u65e5\u671f"

    .line 12863
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12860
    move-object/from16 v0, v18

    invoke-static {v0, v3, v1}, Lvj;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 12867
    :cond_11
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/emailcommon/mail/Message;->i()Ljava/lang/String;

    move-result-object v1

    .line 12869
    const-string/jumbo v3, "\u6807\u9898"

    if-nez v1, :cond_12

    const-string/jumbo v1, "\u65e0\u6807\u9898"

    :cond_12
    move-object/from16 v0, v18

    invoke-static {v0, v3, v1}, Lvj;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 12874
    const-string/jumbo v1, "</table>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    const/4 v5, 0x0

    .line 1690
    const/4 v6, 0x0

    .line 1692
    const/16 v17, 0x1

    .line 1693
    goto/16 :goto_0

    .line 1683
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 12807
    :cond_14
    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 1740
    .end local v5    # "textPartId":Lvj$e;
    .end local v6    # "htmlPartId":Lvj$e;
    .end local v7    # "calednarId":Lvj$e;
    .end local v8    # "attachments":Ljava/util/List;, "Ljava/util/List<Lvs;>;"
    .end local v10    # "calendar":Ljava/lang/StringBuilder;
    .end local v13    # "containerPart":Lvs;
    .end local v16    # "header":Lvj$d;
    .end local v17    # "hideDivider":Z
    .end local v18    # "html":Ljava/lang/StringBuilder;
    .end local v21    # "innerMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v22    # "text":Ljava/lang/StringBuilder;
    .end local v25    # "viewable":Lvj$h;
    .end local v26    # "viewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    :catch_0
    move-exception v15

    .line 1741
    .local v15, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->PARSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v3, "Couldn\'t extract viewable parts"

    invoke-direct {v1, v2, v3, v15}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1686
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v5    # "textPartId":Lvj$e;
    .restart local v6    # "htmlPartId":Lvj$e;
    .restart local v7    # "calednarId":Lvj$e;
    .restart local v8    # "attachments":Ljava/util/List;, "Ljava/util/List<Lvs;>;"
    .restart local v10    # "calendar":Ljava/lang/StringBuilder;
    .restart local v13    # "containerPart":Lvs;
    .restart local v16    # "header":Lvj$d;
    .restart local v17    # "hideDivider":Z
    .restart local v18    # "html":Ljava/lang/StringBuilder;
    .restart local v21    # "innerMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .restart local v22    # "text":Ljava/lang/StringBuilder;
    .restart local v25    # "viewable":Lvj$h;
    .restart local v26    # "viewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 1693
    .end local v13    # "containerPart":Lvs;
    .end local v16    # "header":Lvj$d;
    .end local v21    # "innerMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_16
    :try_start_1
    move-object/from16 v0, v25

    instance-of v1, v0, Lvj$a;

    if-eqz v1, :cond_0

    .line 1695
    move-object/from16 v0, v25

    check-cast v0, Lvj$a;

    move-object v9, v0

    .line 13044
    .local v9, "alternative":Lvj$a;
    iget-object v1, v9, Lvj$a;->a:Ljava/util/List;

    .line 1704
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 13048
    iget-object v0, v9, Lvj$a;->b:Ljava/util/List;

    move-object/from16 v23, v0

    .line 14048
    .local v23, "textAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    :goto_7
    iget-object v1, v9, Lvj$a;->b:Ljava/util/List;

    .line 1707
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 15044
    iget-object v0, v9, Lvj$a;->a:Ljava/util/List;

    move-object/from16 v19, v0

    .line 15052
    .local v19, "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    :goto_8
    iget-object v11, v9, Lvj$a;->c:Ljava/util/List;

    .line 1712
    .local v11, "calendarAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    if-nez v17, :cond_19

    const/4 v14, 0x1

    .line 1713
    .local v14, "divider":Z
    :goto_9
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lvj$h;

    .line 1714
    .local v24, "textViewable":Lvj$h;
    move-object/from16 v0, v24

    invoke-static {v0, v14, v5}, Lvj;->c(Lvj$h;ZLvj$e;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1715
    const/4 v14, 0x1

    .line 1716
    goto :goto_a

    .line 14044
    .end local v11    # "calendarAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .end local v14    # "divider":Z
    .end local v19    # "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .end local v23    # "textAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .end local v24    # "textViewable":Lvj$h;
    :cond_17
    iget-object v0, v9, Lvj$a;->a:Ljava/util/List;

    move-object/from16 v23, v0

    goto :goto_7

    .line 15048
    .restart local v23    # "textAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    :cond_18
    iget-object v0, v9, Lvj$a;->b:Ljava/util/List;

    move-object/from16 v19, v0

    goto :goto_8

    .line 1712
    .restart local v11    # "calendarAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .restart local v19    # "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    :cond_19
    const/4 v14, 0x0

    goto :goto_9

    .line 1719
    .restart local v14    # "divider":Z
    :cond_1a
    if-nez v17, :cond_1b

    const/4 v14, 0x1

    .line 1720
    :goto_b
    if-eqz v11, :cond_1c

    .line 1721
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lvj$h;

    .line 1722
    .local v12, "calendarViewable":Lvj$h;
    invoke-static {v12, v14, v7}, Lvj;->b(Lvj$h;ZLvj$e;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1723
    const/4 v14, 0x1

    .line 1724
    goto :goto_c

    .line 1719
    .end local v12    # "calendarViewable":Lvj$h;
    :cond_1b
    const/4 v14, 0x0

    goto :goto_b

    .line 1728
    :cond_1c
    if-nez v17, :cond_1d

    const/4 v14, 0x1

    .line 1729
    :goto_d
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lvj$h;

    .line 1730
    .local v20, "htmlViewable":Lvj$h;
    move-object/from16 v0, v20

    invoke-static {v0, v14, v6}, Lvj;->a(Lvj$h;ZLvj$e;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1731
    const/4 v14, 0x1

    .line 1732
    goto :goto_e

    .line 1728
    .end local v20    # "htmlViewable":Lvj$h;
    :cond_1d
    const/4 v14, 0x0

    goto :goto_d

    .line 1733
    :cond_1e
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1737
    .end local v9    # "alternative":Lvj$a;
    .end local v11    # "calendarAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .end local v14    # "divider":Z
    .end local v19    # "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .end local v23    # "textAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .end local v25    # "viewable":Lvj$h;
    :cond_1f
    new-instance v1, Lvj$i;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v1 .. v8}, Lvj$i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvj$e;Lvj$e;Lvj$e;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Lvp;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2212
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, v3

    invoke-static/range {v1 .. v6}, Lvj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLuu;)Lvp;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLuu;)Lvp;
    .locals 13
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2224
    if-eqz p1, :cond_0

    .line 2226
    const/4 v10, 0x0

    .line 2227
    invoke-static {p1, v10}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2228
    const-string/jumbo v10, "quoted-printable"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2230
    new-instance v6, Lkqc;

    invoke-direct {v6, p0}, Lkqc;-><init>(Ljava/io/InputStream;)V

    .end local p0    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    move-object p0, v6

    .line 2238
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    new-instance v9, Lvd;

    invoke-direct {v9}, Lvd;-><init>()V

    .line 24052
    .local v9, "tempBody":Lvd;
    const-string/jumbo v10, "body"

    const/4 v11, 0x0

    sget-object v12, Lvd;->a:Ljava/io/File;

    invoke-static {v10, v11, v12}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    iput-object v10, v9, Lvd;->b:Ljava/io/File;

    .line 24053
    iget-object v10, v9, Lvd;->b:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->deleteOnExit()V

    .line 24054
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v10, v9, Lvd;->b:Ljava/io/File;

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2241
    .local v8, "out":Ljava/io/OutputStream;
    const/16 v10, 0x1000

    new-array v2, v10, [B

    .line 2242
    .local v2, "buffer":[B
    const-wide/16 v4, 0x0

    .line 2244
    .local v4, "count":J
    :cond_1
    :goto_1
    const/4 v10, -0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "n":I
    if-eq v10, v7, :cond_4

    .line 2245
    sget-boolean v10, Lzb;->b:Z

    if-eqz v10, :cond_2

    .line 2246
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 2247
    .local v3, "bufferDisplay":Ljava/lang/String;
    sget-object v10, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "decodeBody, read <<< "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    .end local v3    # "bufferDisplay":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v8, v2, v10, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 2251
    int-to-long v10, v7

    add-long/2addr v4, v10

    .line 2252
    if-eqz p5, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v10, p3, v10

    if-lez v10, :cond_1

    .line 2253
    long-to-float v10, v4

    move-wide/from16 v0, p3

    long-to-float v11, v0

    div-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move-object/from16 v0, p5

    invoke-interface {v0, p2, v10}, Luu;->messageProgress(Ljava/lang/String;I)V

    goto :goto_1

    .line 2232
    .end local v2    # "buffer":[B
    .end local v4    # "count":J
    .end local v7    # "n":I
    .end local v8    # "out":Ljava/io/OutputStream;
    .end local v9    # "tempBody":Lvd;
    :cond_3
    const-string/jumbo v10, "base64"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2234
    new-instance v6, Lkpy;

    invoke-direct {v6, p0}, Lkpy;-><init>(Ljava/io/InputStream;)V

    .end local p0    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    move-object p0, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 2257
    .restart local v2    # "buffer":[B
    .restart local v4    # "count":J
    .restart local v7    # "n":I
    .restart local v8    # "out":Ljava/io/OutputStream;
    .restart local v9    # "tempBody":Lvd;
    :cond_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 2258
    return-object v9
.end method

.method public static a(Ljava/lang/String;Lvs;)V
    .locals 4
    .param p0, "charset"    # Ljava/lang/String;
    .param p1, "part"    # Lvs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3899
    const-string/jumbo v0, "Content-Type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3900
    invoke-interface {p1}, Lvs;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";\n charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26905
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-le v2, v3, :cond_0

    const-string/jumbo v2, "x-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "-shift_jis-2007"

    .line 26906
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26907
    const-string/jumbo p0, "shift_jis"

    .line 3900
    .end local p0    # "charset":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3899
    invoke-interface {p1, v0, v1}, Lvs;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3901
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "html"    # Ljava/lang/StringBuilder;
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1889
    const-string/jumbo v0, "<tr><th style=\"text-align: left; vertical-align: top;\">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    const-string/jumbo v0, "</th>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    const-string/jumbo v0, "<td>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    const-string/jumbo v0, "</td></tr>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Lvs;Z)V
    .locals 2
    .param p0, "html"    # Ljava/lang/StringBuilder;
    .param p1, "part"    # Lvs;
    .param p2, "prependDivider"    # Z

    .prologue
    .line 2047
    if-eqz p2, :cond_0

    .line 2048
    invoke-static {p1}, Lvj;->b(Lvs;)Ljava/lang/String;

    move-result-object v0

    .line 2050
    .local v0, "filename":Ljava/lang/String;
    const-string/jumbo v1, "<p style=\"margin-top: 2.5em; margin-bottom: 1em; border-bottom: 1px solid #000\">"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2051
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    const-string/jumbo v1, "</p>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    .end local v0    # "filename":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static a(Lvr;Ljava/util/Set;Ljava/util/List;)V
    .locals 6
    .param p0, "multipart"    # Lvr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvr;",
            "Ljava/util/Set",
            "<",
            "Lvs;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lvs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2490
    .local p1, "knownTextParts":Ljava/util/Set;, "Ljava/util/Set<Lvs;>;"
    .local p2, "attachments":Ljava/util/List;, "Ljava/util/List<Lvs;>;"
    invoke-virtual {p0}, Lvr;->c()I

    move-result v1

    .line 2491
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2492
    invoke-virtual {p0, v2}, Lvr;->a(I)Lvq;

    move-result-object v4

    .line 2493
    .local v4, "part":Lvs;
    invoke-interface {v4}, Lvs;->a()Lvp;

    move-result-object v0

    .line 2494
    .local v0, "body":Lvp;
    instance-of v5, v0, Lvr;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 2495
    check-cast v3, Lvr;

    .line 2496
    .local v3, "innerMultipart":Lvr;
    invoke-static {v3, p1, p2}, Lvj;->a(Lvr;Ljava/util/Set;Ljava/util/List;)V

    .line 2491
    .end local v3    # "innerMultipart":Lvr;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2497
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2498
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2501
    .end local v0    # "body":Lvp;
    .end local v4    # "part":Lvs;
    :cond_2
    return-void
.end method

.method public static a(Lvs;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "part"    # Lvs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvs;",
            "Ljava/util/ArrayList",
            "<",
            "Lvs;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lvs;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2279
    .local p1, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvs;>;"
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvs;>;"
    invoke-interface {p0}, Lvs;->a()Lvp;

    move-result-object v3

    instance-of v3, v3, Lvr;

    if-eqz v3, :cond_0

    .line 2281
    invoke-interface {p0}, Lvs;->a()Lvp;

    move-result-object v2

    check-cast v2, Lvr;

    .line 2282
    .local v2, "mp":Lvr;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lvr;->c()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2284
    invoke-virtual {v2, v0}, Lvr;->a(I)Lvq;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lvj;->a(Lvs;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2291
    .end local v0    # "i":I
    .end local v2    # "mp":Lvr;
    :cond_0
    invoke-interface {p0}, Lvs;->a()Lvp;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/alimei/emailcommon/mail/Message;

    if-eqz v3, :cond_2

    .line 2293
    invoke-interface {p0}, Lvs;->a()Lvp;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 2294
    .local v1, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    invoke-static {v1, p1, p2}, Lvj;->a(Lvs;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2309
    .end local v1    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_1
    :goto_1
    return-void

    .line 2300
    :cond_2
    invoke-static {p0}, Lvj;->d(Lvs;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2302
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2306
    :cond_3
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static b(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 2863
    const/4 v1, 0x0

    .line 2866
    .local v1, "isIphoneString":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x13

    if-le v3, v4, :cond_0

    const-string/jumbo v3, "x-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "-iso-2022-jp-2007"

    .line 2867
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2869
    new-instance v0, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/emailcommon/internet/Iso2022JpToShiftJisInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2870
    .end local p0    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x11

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-shift_jis-2007"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object p0, v0

    .line 2874
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    if-le v3, v4, :cond_2

    const-string/jumbo v3, "x-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "-shift_jis-2007"

    .line 2875
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2879
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xf

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "iphone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2880
    const/4 v1, 0x1

    .line 2882
    :cond_1
    const-string/jumbo p1, "shift_jis"

    .line 2888
    :cond_2
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2890
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 2891
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "I don\'t know how to deal with the charset "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Falling back to US-ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    :cond_3
    const-string/jumbo p1, "US-ASCII"

    .line 2900
    :cond_4
    invoke-static {p0, p1}, Lkpv;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2902
    .local v2, "str":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 2903
    invoke-static {v2}, Lvj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2904
    :cond_5
    return-object v2
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lvj;->c(Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;
    .locals 5
    .param p0, "charset"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 2752
    if-eqz p0, :cond_0

    const-string/jumbo v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2753
    :cond_0
    const-string/jumbo p0, "US-ASCII"

    .line 2755
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 2756
    const-string/jumbo v1, "cp932"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2757
    const-string/jumbo p0, "shift_jis"

    .line 2761
    :cond_2
    :goto_0
    const-string/jumbo v1, "shift_jis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "iso-2022-jp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25772
    :cond_3
    if-eqz p1, :cond_4

    .line 25792
    const-string/jumbo v1, "Received"

    invoke-virtual {p1, v1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;)[Ljava/lang/String;

    .line 25778
    if-eqz v0, :cond_7

    .line 2764
    .local v0, "variant":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 2765
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-2007"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2767
    .end local v0    # "variant":Ljava/lang/String;
    :cond_5
    return-object p0

    .line 2758
    :cond_6
    const-string/jumbo v1, "koi8-u"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2759
    const-string/jumbo p0, "koi8-r"

    goto :goto_0

    .line 25816
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->j()[Lvo;

    move-result-object v1

    .line 25817
    if-eqz v1, :cond_8

    array-length v2, v1

    if-nez v2, :cond_9

    :cond_8
    move-object v1, v0

    .line 25784
    :goto_2
    if-eqz v1, :cond_a

    move-object v0, v1

    .line 25785
    goto :goto_1

    .line 25820
    :cond_9
    aget-object v1, v1, v4

    .line 26075
    iget-object v1, v1, Lvo;->a:Ljava/lang/String;

    .line 25820
    invoke-static {v1}, Lvj;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 26851
    :cond_a
    const-string/jumbo v1, "X-Mailer"

    invoke-virtual {p1, v1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 26852
    if-eqz v1, :cond_4

    array-length v2, v1

    if-eqz v2, :cond_4

    .line 26855
    aget-object v2, v1, v4

    const-string/jumbo v3, "iPhone Mail "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    aget-object v1, v1, v4

    const-string/jumbo v2, "iPad Mail "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26856
    :cond_b
    const-string/jumbo v0, "iphone"

    goto :goto_1
.end method

.method private static b(Lvs;)Ljava/lang/String;
    .locals 3
    .param p0, "part"    # Lvs;

    .prologue
    .line 2194
    :try_start_0
    invoke-interface {p0}, Lvs;->c()Ljava/lang/String;

    move-result-object v0

    .line 2195
    .local v0, "disposition":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2196
    const-string/jumbo v2, "filename"

    invoke-static {v0, v2}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2198
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string/jumbo v1, ""
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2203
    .end local v0    # "disposition":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private static b(Lvj$h;ZLvj$e;)Ljava/lang/StringBuilder;
    .locals 11
    .param p0, "viewable"    # Lvj$h;
    .param p1, "prependDivider"    # Z
    .param p2, "calendarPartId"    # Lvj$e;

    .prologue
    .line 1975
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1976
    .local v4, "html":Ljava/lang/StringBuilder;
    instance-of v9, p0, Lvj$g;

    if-eqz v9, :cond_5

    move-object v9, p0

    .line 1977
    check-cast v9, Lvj$g;

    .line 18970
    iget-object v7, v9, Lvj$g;->a:Lvs;

    .line 1978
    .local v7, "part":Lvs;
    invoke-static {v4, v7, p1}, Lvj;->a(Ljava/lang/StringBuilder;Lvs;Z)V

    .line 1980
    invoke-static {v7}, Lvj;->a(Lvs;)Ljava/lang/String;

    move-result-object v8

    .line 1981
    .local v8, "t":Ljava/lang/String;
    if-nez v8, :cond_4

    .line 1982
    const-string/jumbo v8, ""

    .line 1986
    :cond_0
    :goto_0
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    :try_start_0
    const-string/jumbo v9, "X-Android-Attachment-StoreData"

    invoke-interface {v7, v9}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1990
    .local v3, "headers":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v9, v3

    if-lez v9, :cond_1

    .line 1991
    const/4 v9, 0x0

    aget-object v9, v3, v9

    .line 19936
    iput-object v9, p2, Lvj$e;->a:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    .end local v3    # "headers":[Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    const-string/jumbo v9, "Content-Transfer-Encoding"

    invoke-interface {v7, v9}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1999
    .restart local v3    # "headers":[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v9, v3

    if-lez v9, :cond_2

    .line 2000
    const/4 v9, 0x0

    aget-object v9, v3, v9

    .line 19944
    iput-object v9, p2, Lvj$e;->b:Ljava/lang/String;
    :try_end_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2007
    .end local v3    # "headers":[Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_2
    const-string/jumbo v9, "Content-Type"

    invoke-interface {v7, v9}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2008
    .restart local v3    # "headers":[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v9, v3

    if-lez v9, :cond_3

    .line 2009
    const/4 v9, 0x0

    aget-object v9, v3, v9

    .line 19952
    iput-object v9, p2, Lvj$e;->c:Ljava/lang/String;
    :try_end_2
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2030
    .end local v3    # "headers":[Ljava/lang/String;
    .end local v7    # "part":Lvs;
    .end local v8    # "t":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object v4

    .line 1983
    .restart local v7    # "part":Lvs;
    .restart local v8    # "t":Ljava/lang/String;
    :cond_4
    instance-of v9, p0, Lvj$f;

    if-eqz v9, :cond_0

    .line 1984
    invoke-static {v8}, Luy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1993
    :catch_0
    move-exception v2

    .line 1994
    .local v2, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_1

    .line 2002
    .end local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v2

    .line 2003
    .restart local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_2

    .line 2011
    .end local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catch_2
    move-exception v2

    .line 2012
    .restart local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_3

    .line 2014
    .end local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v7    # "part":Lvs;
    .end local v8    # "t":Ljava/lang/String;
    :cond_5
    instance-of v9, p0, Lvj$a;

    if-eqz v9, :cond_3

    move-object v0, p0

    .line 2018
    check-cast v0, Lvj$a;

    .line 20048
    .local v0, "alternative":Lvj$a;
    iget-object v9, v0, Lvj$a;->b:Ljava/util/List;

    .line 2020
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 21044
    iget-object v5, v0, Lvj$a;->a:Ljava/util/List;

    .line 2023
    .local v5, "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    :goto_4
    move v1, p1

    .line 2024
    .local v1, "divider":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvj$h;

    .line 2025
    .local v6, "htmlViewable":Lvj$h;
    invoke-static {v6, v1, p2}, Lvj;->b(Lvj$h;ZLvj$e;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2026
    const/4 v1, 0x1

    .line 2027
    goto :goto_5

    .line 21048
    .end local v1    # "divider":Z
    .end local v5    # "htmlAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .end local v6    # "htmlViewable":Lvj$h;
    :cond_6
    iget-object v5, v0, Lvj$a;->b:Ljava/util/List;

    goto :goto_4
.end method

.method private static b(Lvr;Z)Ljava/util/List;
    .locals 10
    .param p0, "multipart"    # Lvr;
    .param p1, "directChild"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvr;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lvj$h;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2589
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2591
    .local v7, "viewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    invoke-virtual {p0}, Lvr;->c()I

    move-result v2

    .line 2592
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2593
    invoke-virtual {p0, v3}, Lvr;->a(I)Lvq;

    move-result-object v5

    .line 2594
    .local v5, "part":Lvs;
    invoke-interface {v5}, Lvs;->a()Lvp;

    move-result-object v0

    .line 2595
    .local v0, "body":Lvp;
    instance-of v8, v0, Lvr;

    if-eqz v8, :cond_1

    move-object v4, v0

    .line 2596
    check-cast v4, Lvr;

    .line 2607
    .local v4, "innerMultipart":Lvr;
    const/4 v8, 0x0

    invoke-static {v4, v8}, Lvj;->b(Lvr;Z)Ljava/util/List;

    move-result-object v6

    .line 2610
    .local v6, "textViewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2611
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2612
    if-nez p1, :cond_2

    .line 2592
    .end local v4    # "innerMultipart":Lvr;
    .end local v6    # "textViewables":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2616
    :cond_1
    invoke-static {v5}, Lvj;->d(Lvs;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2617
    invoke-interface {v5}, Lvs;->e()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "text/calendar"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2618
    new-instance v1, Lvj$b;

    invoke-direct {v1, v5}, Lvj$b;-><init>(Lvs;)V

    .line 2619
    .local v1, "calendar":Lvj$b;
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2620
    if-eqz p1, :cond_0

    .line 2625
    .end local v0    # "body":Lvp;
    .end local v1    # "calendar":Lvj$b;
    .end local v5    # "part":Lvs;
    :cond_2
    return-object v7
.end method

.method private static b(Ljava/lang/StringBuilder;Lvs;Z)V
    .locals 6
    .param p0, "text"    # Ljava/lang/StringBuilder;
    .param p1, "part"    # Lvs;
    .param p2, "prependDivider"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2157
    if-eqz p2, :cond_1

    .line 2158
    invoke-static {p1}, Lvj;->b(Lvs;)Ljava/lang/String;

    move-result-object v0

    .line 2160
    .local v0, "filename":Ljava/lang/String;
    const-string/jumbo v2, "\n\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2162
    .local v1, "len":I
    if-lez v1, :cond_2

    .line 2163
    sget v2, Lvj;->b:I

    sget v3, Lvj;->c:I

    sub-int/2addr v2, v3

    sget v3, Lvj;->d:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 2165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lvj;->b:I

    sget v4, Lvj;->c:I

    sub-int/2addr v3, v4

    sget v4, Lvj;->d:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2170
    :cond_0
    const-string/jumbo v2, "----- "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2171
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    const-string/jumbo v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2173
    const-string/jumbo v2, "------------------------------------------------------------------------"

    sget v3, Lvj;->b:I

    sget v4, Lvj;->c:I

    sub-int/2addr v3, v4

    .line 2174
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Lvj;->d:I

    sub-int/2addr v3, v4

    .line 2173
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    :goto_0
    const-string/jumbo v2, "\n\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2181
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "len":I
    :cond_1
    return-void

    .line 2177
    .restart local v0    # "filename":Ljava/lang/String;
    .restart local v1    # "len":I
    :cond_2
    const-string/jumbo v2, "------------------------------------------------------------------------"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "matchAgainst"    # Ljava/lang/String;

    .prologue
    .line 1596
    const-string/jumbo v1, "\\*"

    const-string/jumbo v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1597
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "etext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 972
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lvj;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    const/16 v10, 0x3f

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 962
    if-nez p0, :cond_1

    .line 964
    const/4 p0, 0x0

    .line 5167
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 5126
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 5131
    const-string/jumbo v0, " "

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 5137
    .end local p0    # "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    move v2, v1

    .line 5141
    :goto_1
    const-string/jumbo v3, "=?"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 5146
    add-int/lit8 v3, v6, 0x2

    .line 5147
    if-eq v6, v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v3, 0x2

    if-le v7, v8, :cond_2

    .line 5149
    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 5151
    if-ltz v7, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v9, v7, 0x1

    if-le v8, v9, :cond_2

    .line 5152
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 5153
    if-eq v7, v4, :cond_2

    .line 5155
    add-int/lit8 v3, v7, 0x1

    .line 5160
    :cond_2
    if-ne v6, v4, :cond_3

    move v3, v4

    .line 5161
    :goto_2
    if-ne v3, v4, :cond_4

    .line 5163
    if-eqz v2, :cond_0

    .line 5166
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5160
    :cond_3
    const-string/jumbo v7, "?="

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_2

    .line 5169
    :cond_4
    add-int/lit8 v3, v3, 0x2

    .line 5171
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5173
    invoke-static {p0, v6, v3, p1}, Lve;->a(Ljava/lang/String;IILcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v7

    .line 5174
    if-nez v7, :cond_5

    .line 5176
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5177
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5189
    :goto_3
    if-eqz v7, :cond_8

    const/4 v0, 0x1

    :goto_4
    move v2, v3

    .line 5190
    goto :goto_1

    .line 5181
    :cond_5
    if-eqz v0, :cond_6

    invoke-static {v2}, Lksz;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5183
    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5185
    :cond_7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    move v0, v1

    .line 5189
    goto :goto_4
.end method

.method private static c(Lvs;)Ljava/lang/String;
    .locals 3
    .param p0, "part"    # Lvs;

    .prologue
    const/4 v1, 0x0

    .line 2639
    :try_start_0
    invoke-interface {p0}, Lvs;->c()Ljava/lang/String;

    move-result-object v0

    .line 2640
    .local v0, "disposition":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2641
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2646
    .end local v0    # "disposition":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static c(Lvj$h;ZLvj$e;)Ljava/lang/StringBuilder;
    .locals 11
    .param p0, "viewable"    # Lvj$h;
    .param p1, "prependDivider"    # Z
    .param p2, "textPartId"    # Lvj$e;

    .prologue
    .line 2075
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2076
    .local v6, "text":Ljava/lang/StringBuilder;
    instance-of v9, p0, Lvj$g;

    if-eqz v9, :cond_5

    move-object v9, p0

    .line 2077
    check-cast v9, Lvj$g;

    .line 21970
    iget-object v4, v9, Lvj$g;->a:Lvs;

    .line 2078
    .local v4, "part":Lvs;
    invoke-static {v6, v4, p1}, Lvj;->b(Ljava/lang/StringBuilder;Lvs;Z)V

    .line 2080
    invoke-static {v4}, Lvj;->a(Lvs;)Ljava/lang/String;

    move-result-object v5

    .line 2082
    .local v5, "t":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 2083
    const-string/jumbo v5, ""

    .line 2087
    :cond_0
    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    :try_start_0
    const-string/jumbo v9, "X-Android-Attachment-StoreData"

    invoke-interface {v4, v9}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2091
    .local v3, "headers":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v9, v3

    if-lez v9, :cond_1

    .line 2092
    const/4 v9, 0x0

    aget-object v9, v3, v9

    .line 22936
    iput-object v9, p2, Lvj$e;->a:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2098
    .end local v3    # "headers":[Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    const-string/jumbo v9, "Content-Transfer-Encoding"

    invoke-interface {v4, v9}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2099
    .restart local v3    # "headers":[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v9, v3

    if-lez v9, :cond_2

    .line 2100
    const/4 v9, 0x0

    aget-object v9, v3, v9

    .line 22944
    iput-object v9, p2, Lvj$e;->b:Ljava/lang/String;
    :try_end_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2107
    .end local v3    # "headers":[Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_2
    const-string/jumbo v9, "Content-Type"

    invoke-interface {v4, v9}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2108
    .restart local v3    # "headers":[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v9, v3

    if-lez v9, :cond_3

    .line 2109
    const/4 v9, 0x0

    aget-object v9, v3, v9

    .line 22952
    iput-object v9, p2, Lvj$e;->c:Ljava/lang/String;
    :try_end_2
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2131
    .end local v3    # "headers":[Ljava/lang/String;
    .end local v4    # "part":Lvs;
    .end local v5    # "t":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object v6

    .line 2084
    .restart local v4    # "part":Lvs;
    .restart local v5    # "t":Ljava/lang/String;
    :cond_4
    instance-of v9, p0, Lvj$c;

    if-eqz v9, :cond_0

    .line 2085
    invoke-static {v5}, Luy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2094
    :catch_0
    move-exception v2

    .line 2095
    .local v2, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_1

    .line 2102
    .end local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v2

    .line 2103
    .restart local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_2

    .line 2111
    .end local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catch_2
    move-exception v2

    .line 2112
    .restart local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_3

    .line 2115
    .end local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v4    # "part":Lvs;
    .end local v5    # "t":Ljava/lang/String;
    :cond_5
    instance-of v9, p0, Lvj$a;

    if-eqz v9, :cond_3

    move-object v0, p0

    .line 2119
    check-cast v0, Lvj$a;

    .line 23044
    .local v0, "alternative":Lvj$a;
    iget-object v9, v0, Lvj$a;->a:Ljava/util/List;

    .line 2121
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 23048
    iget-object v7, v0, Lvj$a;->b:Ljava/util/List;

    .line 2124
    .local v7, "textAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    :goto_4
    move v1, p1

    .line 2125
    .local v1, "divider":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvj$h;

    .line 2126
    .local v8, "textViewable":Lvj$h;
    invoke-static {v8, v1, p2}, Lvj;->c(Lvj$h;ZLvj$e;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2127
    const/4 v1, 0x1

    .line 2128
    goto :goto_5

    .line 24044
    .end local v1    # "divider":Z
    .end local v7    # "textAlternative":Ljava/util/List;, "Ljava/util/List<Lvj$h;>;"
    .end local v8    # "textViewable":Lvj$h;
    :cond_6
    iget-object v7, v0, Lvj$a;->a:Ljava/util/List;

    goto :goto_4
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "otherMimeType"    # Ljava/lang/String;

    .prologue
    .line 4194
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lvs;)Ljava/lang/Boolean;
    .locals 8
    .param p0, "part"    # Lvs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2651
    invoke-interface {p0}, Lvs;->c()Ljava/lang/String;

    move-result-object v1

    .line 2652
    .local v1, "disposition":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2653
    .local v3, "dispositionType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2654
    .local v2, "dispositionFilename":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2656
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2657
    const-string/jumbo v6, "filename"

    invoke-static {v1, v6}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2663
    :cond_0
    const-string/jumbo v6, "attachment"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v0, v5

    .line 2665
    .local v0, "attachment":Z
    :goto_0
    if-nez v0, :cond_3

    invoke-interface {p0}, Lvs;->e()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "text/html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2667
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2686
    :goto_1
    return-object v4

    .end local v0    # "attachment":Z
    :cond_2
    move v0, v4

    .line 2663
    goto :goto_0

    .line 2673
    .restart local v0    # "attachment":Z
    :cond_3
    if-nez v0, :cond_4

    invoke-interface {p0}, Lvs;->e()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "text/plain"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2675
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 2678
    :cond_4
    if-nez v0, :cond_5

    invoke-interface {p0}, Lvs;->e()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "text/calendar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2679
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 2686
    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1394
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lvj;->a(Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "etext"    # Ljava/lang/String;
    .param p1, "reBuildCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 980
    if-eqz p0, :cond_2

    const-string/jumbo v14, ""

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 5372
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 5374
    const-string/jumbo v14, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v14, v0, :cond_3

    .line 5375
    const-string/jumbo v14, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 5376
    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    .line 5377
    aget-object v17, v16, v14

    const-string/jumbo v18, "\r"

    const-string/jumbo v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v14

    .line 5378
    aget-object v17, v16, v14

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5376
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 5380
    :cond_0
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5388
    .end local p0    # "etext":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string/jumbo v14, "\t"

    const-string/jumbo v15, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 991
    .restart local p0    # "etext":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "\t\n\r"

    .line 1001
    .local v6, "lwsp":Ljava/lang/String;
    const-string/jumbo v14, "=?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5

    .line 1084
    .end local p0    # "etext":Ljava/lang/String;
    :goto_2
    return-object p0

    .line 5381
    .end local v6    # "lwsp":Ljava/lang/String;
    .restart local p0    # "etext":Ljava/lang/String;
    :cond_3
    const-string/jumbo v14, "\r"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v14, v0, :cond_1

    .line 5382
    const-string/jumbo v14, "\r"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 5383
    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 5384
    aget-object v17, v16, v14

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5383
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 5386
    :cond_4
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1008
    .restart local v6    # "lwsp":Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/util/StringTokenizer;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v6, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1009
    .local v10, "st":Ljava/util/StringTokenizer;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1010
    .local v9, "sb":Ljava/lang/StringBuffer;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 1011
    .local v13, "wsb":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 1013
    .local v7, "prevWasEncoded":Z
    :goto_4
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1015
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 1017
    .local v8, "s":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":C
    const/16 v14, 0x9

    if-eq v1, v14, :cond_6

    const/16 v14, 0xd

    if-eq v1, v14, :cond_6

    const/16 v14, 0xa

    if-ne v1, v14, :cond_7

    .line 1018
    :cond_6
    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1024
    :cond_7
    const/4 v2, -0x1

    .line 1025
    .local v2, "curIndex":I
    :goto_5
    :try_start_0
    const-string/jumbo v14, "=?"

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .local v5, "index":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_8

    .line 1026
    if-eq v5, v2, :cond_8

    .line 1028
    const/4 v14, 0x0

    invoke-static {v8, v14}, Lvj;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1029
    move v2, v5

    goto :goto_5

    .line 1031
    :cond_8
    move-object v12, v8

    .line 1033
    .local v12, "word":Ljava/lang/String;
    if-nez v7, :cond_9

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-lez v14, :cond_9

    .line 1037
    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :cond_9
    const/4 v7, 0x1

    .line 1079
    .end local v5    # "index":I
    :goto_6
    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1080
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_4

    .line 1042
    .end local v12    # "word":Ljava/lang/String;
    :catch_0
    move-exception v14

    move-object v12, v8

    .line 1044
    .restart local v12    # "word":Ljava/lang/String;
    const-string/jumbo v14, "mail.mime.decodetext.strict"

    .line 1045
    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1047
    .local v11, "strict":Ljava/lang/String;
    if-eqz v11, :cond_a

    const-string/jumbo v14, "false"

    .line 1048
    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d

    :cond_a
    const/4 v3, 0x1

    .line 1050
    .local v3, "decodeStrict":Z
    :goto_7
    if-nez v3, :cond_10

    .line 1051
    const/4 v14, 0x0

    invoke-static {v12, v14}, Lvj;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1052
    .local v4, "dword":Ljava/lang/String;
    if-eq v4, v12, :cond_e

    .line 1055
    if-eqz v7, :cond_b

    const-string/jumbo v14, "=?"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 1060
    :cond_b
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-lez v14, :cond_c

    .line 1061
    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1064
    :cond_c
    const-string/jumbo v14, "?="

    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 1065
    move-object v12, v4

    goto :goto_6

    .line 1048
    .end local v3    # "decodeStrict":Z
    .end local v4    # "dword":Ljava/lang/String;
    :cond_d
    const/4 v3, 0x0

    goto :goto_7

    .line 1068
    .restart local v3    # "decodeStrict":Z
    .restart local v4    # "dword":Ljava/lang/String;
    :cond_e
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-lez v14, :cond_f

    .line 1069
    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1070
    :cond_f
    const/4 v7, 0x0

    .line 1072
    goto :goto_6

    .line 1074
    .end local v4    # "dword":Ljava/lang/String;
    :cond_10
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-lez v14, :cond_11

    .line 1075
    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1076
    :cond_11
    const/4 v7, 0x0

    goto :goto_6

    .line 1083
    .end local v1    # "c":C
    .end local v2    # "curIndex":I
    .end local v3    # "decodeStrict":Z
    .end local v8    # "s":Ljava/lang/String;
    .end local v11    # "strict":Ljava/lang/String;
    .end local v12    # "word":Ljava/lang/String;
    :cond_12
    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1084
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1405
    return-object p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "reBuildCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3f

    .line 1089
    const/4 v4, 0x0

    .line 1090
    .local v4, "start":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1091
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_0
    const-string/jumbo v5, "=?"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .local v2, "i":I
    if-ltz v2, :cond_0

    .line 1092
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1094
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1095
    .local v1, "end":I
    if-ltz v1, :cond_0

    .line 1098
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1099
    if-ltz v1, :cond_0

    .line 1102
    const-string/jumbo v5, "?="

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1103
    if-ltz v1, :cond_0

    .line 1105
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1107
    .local v3, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v3, p1}, Lvj;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1111
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1112
    add-int/lit8 v4, v1, 0x2

    .line 1113
    goto :goto_0

    .line 1114
    .end local v1    # "end":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    .line 1118
    .end local p0    # "word":Ljava/lang/String;
    :goto_2
    return-object p0

    .line 1116
    .restart local p0    # "word":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1117
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1118
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .restart local v1    # "end":I
    .restart local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "header"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1459
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1467
    :cond_0
    :goto_0
    return-object v1

    .line 1462
    :cond_1
    const-string/jumbo v2, "\r|\n"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1463
    const-string/jumbo v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1464
    .local v0, "parts":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 1467
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "eword"    # Ljava/lang/String;
    .param p1, "reBuildCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1128
    if-eqz p0, :cond_0

    const-string/jumbo v11, ""

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1129
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1130
    :cond_0
    const-string/jumbo v11, "=?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 1131
    new-instance v11, Lcom/alibaba/alimei/emailcommon/internet/ParseException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "encoded word does not indexOf \"=?\": "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/alimei/emailcommon/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1133
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1134
    .local v8, "ss":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1136
    .local v3, "index":I
    const/4 v10, 0x0

    .line 1137
    .local v10, "topend":I
    const/4 v1, 0x0

    .line 1138
    .local v1, "curhasEncode":Z
    :goto_0
    const-string/jumbo v11, "=?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .local v9, "start":I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_6

    .line 1139
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    if-ge v9, v11, :cond_6

    .line 1140
    if-le v9, v3, :cond_2

    const-string/jumbo v11, ""

    .line 1141
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1142
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    const/4 v1, 0x0

    .line 1145
    :cond_2
    add-int/lit8 v3, v9, 0x2

    .line 1146
    const/4 v5, 0x0

    .line 1148
    .local v5, "n":I
    :cond_3
    const-string/jumbo v11, "?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v11, -0x1

    if-eq v3, v11, :cond_4

    const/4 v11, 0x3

    if-ge v5, v11, :cond_4

    .line 1149
    add-int/lit8 v5, v5, 0x1

    .line 1150
    add-int/lit8 v3, v3, 0x1

    .line 1151
    const/4 v11, 0x2

    if-ne v5, v11, :cond_3

    .line 1152
    move v10, v3

    .line 1156
    :cond_4
    const/4 v11, -0x1

    if-eq v3, v11, :cond_6

    .line 1159
    const-string/jumbo v11, "?="

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1160
    const/4 v11, -0x1

    if-eq v3, v11, :cond_6

    .line 1161
    add-int/lit8 v3, v3, 0x2

    .line 1162
    if-eqz v1, :cond_5

    .line 1163
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1164
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1163
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1165
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "=?="

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1166
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v13, v11, -0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1167
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v15, 0x0

    .line 1168
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    .line 1167
    invoke-virtual {v11, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1169
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1166
    invoke-interface {v8, v13, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1175
    :goto_1
    const/4 v1, 0x1

    .line 1179
    goto/16 :goto_0

    .line 1171
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "=?"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v9, 0x2

    add-int/lit8 v13, v3, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "?="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1180
    .end local v5    # "n":I
    :cond_6
    const/4 v11, -0x1

    if-ne v3, v11, :cond_7

    .line 1181
    move v3, v9

    .line 1182
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1184
    .local v7, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1185
    .local v4, "multi":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 1186
    .local v6, "originalCharset":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_c

    .line 1187
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "=?"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "?="

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1189
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-nez v11, :cond_8

    if-eqz p1, :cond_8

    .line 1190
    const/4 v11, 0x2

    const/16 v12, 0x3f

    const/4 v13, 0x2

    .line 1191
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 1190
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1192
    sget-boolean v11, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v11, :cond_8

    .line 1193
    invoke-static {v6}, Lzb;->d(Ljava/lang/String;)I

    .line 1197
    :cond_8
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lvj;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1200
    :catch_0
    move-exception v11

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1203
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_a

    .line 1204
    if-eqz v6, :cond_b

    if-eqz p1, :cond_b

    .line 1205
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v11, v12, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    :goto_4
    const/4 v11, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1212
    :cond_a
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1208
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1215
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_d

    .line 1216
    if-eqz v6, :cond_e

    if-eqz p1, :cond_e

    .line 1217
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v11, v12, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    :goto_5
    const/4 v11, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1225
    :cond_d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 1220
    :cond_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 2692
    invoke-static {p0}, Lvj;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2693
    .local v1, "variant":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2695
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-shift_jis-2007"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2696
    .local v0, "charset":Ljava/lang/String;
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2700
    .end local v0    # "charset":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "UTF-8"

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "eword"    # Ljava/lang/String;
    .param p1, "reBuildCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1238
    const/16 v18, 0x3f

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .local v12, "pos":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_0

    .line 1239
    new-instance v18, Lcom/alibaba/alimei/emailcommon/internet/ParseException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "encoded word does not include charset: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/alimei/emailcommon/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1241
    :cond_0
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1244
    .local v5, "charset":Ljava/lang/String;
    add-int/lit8 v14, v12, 0x1

    .line 1245
    .local v14, "start":I
    const/16 v18, 0x3f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_1

    .line 1246
    new-instance v18, Lcom/alibaba/alimei/emailcommon/internet/ParseException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "encoded word does not include encoding: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/alimei/emailcommon/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1248
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1251
    .local v9, "encoding":Ljava/lang/String;
    add-int/lit8 v14, v12, 0x1

    .line 1252
    const-string/jumbo v18, "?="

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_2

    .line 1253
    new-instance v18, Lcom/alibaba/alimei/emailcommon/internet/ParseException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "encoded word does not end with \"?=\": "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/alimei/emailcommon/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1261
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1265
    .local v17, "word":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_e

    .line 1267
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 1268
    invoke-static/range {v17 .. v17}, Lvb;->a(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1272
    .local v3, "bis":Ljava/io/ByteArrayInputStream;
    const-string/jumbo v18, "B"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1273
    new-instance v11, Lvc;

    invoke-direct {v11, v3}, Lvc;-><init>(Ljava/io/InputStream;)V

    .line 1285
    .local v11, "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    .line 1286
    .local v6, "count":I
    new-array v4, v6, [B

    .line 1288
    .local v4, "bytes":[B
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v4, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 1293
    if-eqz v5, :cond_4

    const-string/jumbo v18, ""

    .line 1294
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string/jumbo v18, "X-"

    .line 1295
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string/jumbo v18, "x-"

    .line 1296
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1297
    :cond_3
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1299
    :cond_4
    const-string/jumbo v18, "gb2312"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1300
    const-string/jumbo v5, "gbk"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1307
    :cond_5
    if-eqz p1, :cond_6

    :try_start_1
    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 1308
    move-object/from16 v5, p1

    .line 1310
    :cond_6
    if-gtz v6, :cond_c

    const-string/jumbo v8, ""
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1321
    .end local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "bytes":[B
    .end local v6    # "count":I
    .end local v11    # "is":Ljava/io/InputStream;
    .local v8, "decodedWord":Ljava/lang/String;
    :goto_1
    add-int/lit8 v18, v12, 0x2

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 1323
    add-int/lit8 v18, v12, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1324
    .local v13, "rest":Ljava/lang/String;
    const-string/jumbo v18, "mail.mime.decodetext.strict"

    .line 1325
    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1327
    .local v15, "strict":Ljava/lang/String;
    if-eqz v15, :cond_7

    const-string/jumbo v18, "false"

    .line 1328
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_f

    :cond_7
    const/4 v7, 0x1

    .line 1330
    .local v7, "decodeStrict":Z
    :goto_2
    if-nez v7, :cond_8

    .line 1331
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lvj;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1332
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1334
    .end local v7    # "decodeStrict":Z
    .end local v13    # "rest":Ljava/lang/String;
    .end local v15    # "strict":Ljava/lang/String;
    :cond_9
    return-object v8

    .line 1274
    .end local v8    # "decodedWord":Ljava/lang/String;
    .restart local v3    # "bis":Ljava/io/ByteArrayInputStream;
    :cond_a
    const-string/jumbo v18, "Q"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1275
    new-instance v11, Lvl;

    invoke-direct {v11, v3}, Lvl;-><init>(Ljava/io/InputStream;)V

    .restart local v11    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1277
    .end local v11    # "is":Ljava/io/InputStream;
    :cond_b
    new-instance v18, Ljava/io/UnsupportedEncodingException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "unknown encoding: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1335
    .end local v3    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v16

    .line 1338
    .local v16, "uex":Ljava/io/UnsupportedEncodingException;
    throw v16

    .line 1310
    .end local v16    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bytes":[B
    .restart local v6    # "count":I
    .restart local v11    # "is":Ljava/io/InputStream;
    :cond_c
    :try_start_3
    new-instance v8, Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v8, v4, v0, v6, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 1313
    :catch_1
    move-exception v18

    :try_start_4
    const-string/jumbo v5, "gbk"

    .line 1314
    if-gtz v6, :cond_d

    const-string/jumbo v8, ""

    .line 1317
    .restart local v8    # "decodedWord":Ljava/lang/String;
    :goto_3
    goto/16 :goto_1

    .line 1314
    .end local v8    # "decodedWord":Ljava/lang/String;
    :cond_d
    new-instance v8, Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v8, v4, v0, v6, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 1339
    .end local v3    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "bytes":[B
    .end local v6    # "count":I
    .end local v11    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v10

    .line 1341
    .local v10, "ioex":Ljava/io/IOException;
    new-instance v18, Lcom/alibaba/alimei/emailcommon/internet/ParseException;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/alimei/emailcommon/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1319
    .end local v10    # "ioex":Ljava/io/IOException;
    :cond_e
    :try_start_5
    const-string/jumbo v8, ""
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    .restart local v8    # "decodedWord":Ljava/lang/String;
    goto/16 :goto_1

    .line 1328
    .restart local v13    # "rest":Ljava/lang/String;
    .restart local v15    # "strict":Ljava/lang/String;
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1351
    .end local v8    # "decodedWord":Ljava/lang/String;
    .end local v13    # "rest":Ljava/lang/String;
    .end local v15    # "strict":Ljava/lang/String;
    :catch_3
    move-exception v18

    new-instance v18, Ljava/io/UnsupportedEncodingException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v18
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2e

    const/4 v4, 0x0

    .line 2705
    const/4 v2, 0x0

    .line 2706
    .local v2, "returnedType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2708
    .local v1, "extension":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 2710
    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2711
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2713
    :cond_0
    if-eqz v2, :cond_1

    .line 2728
    .end local v2    # "returnedType":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2717
    .restart local v2    # "returnedType":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    .line 2719
    sget-object v5, Lvj;->a:[[Ljava/lang/String;

    move v3, v4

    :goto_1
    const/16 v6, 0x34f

    if-ge v3, v6, :cond_3

    aget-object v0, v5, v3

    .line 2721
    .local v0, "contentTypeMapEntry":[Ljava/lang/String;
    aget-object v6, v0, v4

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2723
    const/4 v3, 0x1

    aget-object v2, v0, v3

    goto :goto_0

    .line 2719
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2728
    .end local v0    # "contentTypeMapEntry":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "application/octet-stream"

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2838
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 2839
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 2846
    :cond_0
    :goto_0
    return v2

    .line 2842
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2843
    .local v0, "c":C
    const/16 v3, 0x40

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_0

    .line 2846
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 4198
    const-string/jumbo v0, "message/rfc822"

    invoke-static {p0, v0}, Lvj;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 4219
    if-nez p0, :cond_0

    .line 4220
    const-string/jumbo v0, "base64"

    .line 4228
    :goto_0
    return-object v0

    .line 4221
    :cond_0
    invoke-static {p0}, Lorg/apache/james/mime4j/util/MimeUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4222
    const-string/jumbo v0, "8bit"

    goto :goto_0

    .line 4223
    :cond_1
    const-string/jumbo v0, "multipart/signed"

    invoke-static {p0, v0}, Lvj;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 27198
    const-string/jumbo v0, "message/rfc822"

    invoke-static {p0, v0}, Lvj;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 4223
    if-eqz v0, :cond_3

    .line 4224
    :cond_2
    const-string/jumbo v0, "7bit"

    goto :goto_0

    .line 27233
    :cond_3
    if-eqz p0, :cond_4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 4225
    :goto_1
    if-eqz v0, :cond_5

    .line 4226
    const-string/jumbo v0, "8bit"

    goto :goto_0

    .line 27233
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 4228
    :cond_5
    const-string/jumbo v0, "base64"

    goto :goto_0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 2825
    const-string/jumbo v0, "docomo.ne.jp"

    invoke-static {p0, v0}, Lvj;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "dwmail.jp"

    invoke-static {p0, v0}, Lvj;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "pdx.ne.jp"

    .line 2826
    invoke-static {p0, v0}, Lvj;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "willcom.com"

    invoke-static {p0, v0}, Lvj;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2827
    :cond_0
    const-string/jumbo v0, "docomo"

    .line 2833
    :goto_0
    return-object v0

    .line 2828
    :cond_1
    const-string/jumbo v0, "softbank.ne.jp"

    invoke-static {p0, v0}, Lvj;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "vodafone.ne.jp"

    invoke-static {p0, v0}, Lvj;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "disney.ne.jp"

    .line 2829
    invoke-static {p0, v0}, Lvj;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "vertuclub.ne.jp"

    invoke-static {p0, v0}, Lvj;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2830
    :cond_2
    const-string/jumbo v0, "softbank"

    goto :goto_0

    .line 2831
    :cond_3
    const-string/jumbo v0, "ezweb.ne.jp"

    invoke-static {p0, v0}, Lvj;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "ido.ne.jp"

    invoke-static {p0, v0}, Lvj;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2832
    :cond_4
    const-string/jumbo v0, "kddi"

    goto :goto_0

    .line 2833
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2910
    .local v0, "buff":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2912
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 2913
    .local v1, "codePoint":I
    invoke-static {v1}, Lvj;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2910
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    goto :goto_0

    .line 2915
    .end local v1    # "codePoint":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
