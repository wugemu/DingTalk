.class public Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "CustomDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field public a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$a;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/content/Context;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

.field private o:Lcth;

.field private p:Lcth;

.field private q:Lcth;

.field private r:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "3"

    aput-object v1, v0, v5

    const-string/jumbo v1, "4"

    aput-object v1, v0, v6

    const-string/jumbo v1, "5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "12"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->h:Ljava/util/List;

    .line 65
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Jan"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Feb"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Mar"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Apr"

    aput-object v1, v0, v6

    const-string/jumbo v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "Dec"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->i:Ljava/util/List;

    .line 69
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "3"

    aput-object v1, v0, v5

    const-string/jumbo v1, "4"

    aput-object v1, v0, v6

    const-string/jumbo v1, "5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "26"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "31"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 31
    sget v0, Lcjj;->A:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->b:I

    .line 32
    sget v0, Lcjj;->o:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->c:I

    .line 33
    sget v0, Lcjj;->q:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->d:I

    .line 34
    sget v0, Lcjj;->s:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->e:I

    .line 35
    sget v0, Lcjj;->x:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->f:I

    .line 37
    const/16 v0, 0xca

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1900"

    aput-object v1, v0, v3

    const-string/jumbo v1, "1901"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "1902"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "1903"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "1904"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "1905"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "1906"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "1907"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "1908"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "1909"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "1910"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "1911"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "1912"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "1913"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "1914"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "1915"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "1916"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "1917"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "1918"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "1919"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "1920"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "1921"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "1922"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "1923"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "1924"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "1925"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "1926"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "1927"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "1928"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "1929"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "1930"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "1931"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "1932"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "1933"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "1934"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "1935"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "1936"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "1937"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "1938"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "1939"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "1940"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "1941"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "1942"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "1943"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "1944"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "1945"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "1946"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "1947"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "1948"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "1949"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "1950"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "1951"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "1952"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "1953"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "1954"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "1955"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "1956"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "1957"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "1958"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "1959"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "1960"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "1961"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "1962"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "1963"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "1964"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "1965"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "1966"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "1967"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "1968"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "1969"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "1970"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "1971"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "1972"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "1973"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "1974"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "1975"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "1976"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "1977"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "1978"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "1979"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "1980"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "1981"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "1982"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "1983"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "1984"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "1985"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "1986"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "1987"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "1988"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "1989"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "1990"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "1991"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "1992"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "1993"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "1994"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string/jumbo v2, "1995"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string/jumbo v2, "1996"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string/jumbo v2, "1997"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "1998"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string/jumbo v2, "1999"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string/jumbo v2, "2000"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string/jumbo v2, "2001"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "2002"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "2003"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "2004"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "2005"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string/jumbo v2, "2006"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "2007"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "2008"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "2009"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "2010"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "2011"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "2012"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v2, "2013"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v2, "2014"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "2015"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "2016"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "2017"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "2018"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "2019"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "2020"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "2021"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "2022"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "2023"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string/jumbo v2, "2024"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string/jumbo v2, "2025"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string/jumbo v2, "2026"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string/jumbo v2, "2027"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string/jumbo v2, "2028"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string/jumbo v2, "2029"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string/jumbo v2, "2030"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string/jumbo v2, "2031"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string/jumbo v2, "2032"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string/jumbo v2, "2033"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string/jumbo v2, "2034"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string/jumbo v2, "2035"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string/jumbo v2, "2036"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string/jumbo v2, "2037"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string/jumbo v2, "2038"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string/jumbo v2, "2039"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string/jumbo v2, "2040"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "2041"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string/jumbo v2, "2042"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string/jumbo v2, "2043"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string/jumbo v2, "2044"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string/jumbo v2, "2045"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string/jumbo v2, "2046"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v2, "2047"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string/jumbo v2, "2048"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string/jumbo v2, "2049"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string/jumbo v2, "2050"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string/jumbo v2, "2051"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string/jumbo v2, "2052"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string/jumbo v2, "2053"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string/jumbo v2, "2054"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string/jumbo v2, "2055"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string/jumbo v2, "2056"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string/jumbo v2, "2057"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string/jumbo v2, "2058"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string/jumbo v2, "2059"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string/jumbo v2, "2060"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string/jumbo v2, "2061"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string/jumbo v2, "2062"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string/jumbo v2, "2063"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string/jumbo v2, "2064"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string/jumbo v2, "2065"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string/jumbo v2, "2066"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string/jumbo v2, "2067"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string/jumbo v2, "2068"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string/jumbo v2, "2069"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string/jumbo v2, "2070"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string/jumbo v2, "2071"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string/jumbo v2, "2072"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string/jumbo v2, "2073"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string/jumbo v2, "2074"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string/jumbo v2, "2075"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string/jumbo v2, "2076"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string/jumbo v2, "2077"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string/jumbo v2, "2078"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string/jumbo v2, "2079"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string/jumbo v2, "2080"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string/jumbo v2, "2081"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string/jumbo v2, "2082"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string/jumbo v2, "2083"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string/jumbo v2, "2084"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string/jumbo v2, "2085"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string/jumbo v2, "2086"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string/jumbo v2, "2087"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string/jumbo v2, "2088"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string/jumbo v2, "2089"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string/jumbo v2, "2090"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string/jumbo v2, "2091"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string/jumbo v2, "2092"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string/jumbo v2, "2093"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string/jumbo v2, "2094"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string/jumbo v2, "2095"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string/jumbo v2, "2096"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string/jumbo v2, "2097"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string/jumbo v2, "2098"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string/jumbo v2, "2099"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string/jumbo v2, "2100"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string/jumbo v2, "2101"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->g:Ljava/util/List;

    .line 97
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->A:Z

    move-object v0, p1

    .line 101
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 102
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->k:Landroid/content/Context;

    .line 103
    invoke-static {p2}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->a(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->w:I

    .line 104
    invoke-static {p3}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->b(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->x:I

    .line 105
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->z:Z

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 31
    sget v0, Lcjj;->A:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->b:I

    .line 32
    sget v0, Lcjj;->o:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->c:I

    .line 33
    sget v0, Lcjj;->q:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->d:I

    .line 34
    sget v0, Lcjj;->s:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->e:I

    .line 35
    sget v0, Lcjj;->x:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->f:I

    .line 37
    const/16 v0, 0xca

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "1900"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string/jumbo v3, "1901"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "1902"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "1903"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "1904"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "1905"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "1906"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "1907"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "1908"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "1909"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "1910"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "1911"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "1912"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "1913"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "1914"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "1915"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "1916"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "1917"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "1918"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "1919"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "1920"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "1921"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "1922"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string/jumbo v3, "1923"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "1924"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string/jumbo v3, "1925"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string/jumbo v3, "1926"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string/jumbo v3, "1927"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string/jumbo v3, "1928"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string/jumbo v3, "1929"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string/jumbo v3, "1930"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string/jumbo v3, "1931"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string/jumbo v3, "1932"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string/jumbo v3, "1933"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string/jumbo v3, "1934"

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string/jumbo v3, "1935"

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const-string/jumbo v3, "1936"

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const-string/jumbo v3, "1937"

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const-string/jumbo v3, "1938"

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const-string/jumbo v3, "1939"

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const-string/jumbo v3, "1940"

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const-string/jumbo v3, "1941"

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const-string/jumbo v3, "1942"

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const-string/jumbo v3, "1943"

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const-string/jumbo v3, "1944"

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const-string/jumbo v3, "1945"

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const-string/jumbo v3, "1946"

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    const-string/jumbo v3, "1947"

    aput-object v3, v0, v2

    const/16 v2, 0x30

    const-string/jumbo v3, "1948"

    aput-object v3, v0, v2

    const/16 v2, 0x31

    const-string/jumbo v3, "1949"

    aput-object v3, v0, v2

    const/16 v2, 0x32

    const-string/jumbo v3, "1950"

    aput-object v3, v0, v2

    const/16 v2, 0x33

    const-string/jumbo v3, "1951"

    aput-object v3, v0, v2

    const/16 v2, 0x34

    const-string/jumbo v3, "1952"

    aput-object v3, v0, v2

    const/16 v2, 0x35

    const-string/jumbo v3, "1953"

    aput-object v3, v0, v2

    const/16 v2, 0x36

    const-string/jumbo v3, "1954"

    aput-object v3, v0, v2

    const/16 v2, 0x37

    const-string/jumbo v3, "1955"

    aput-object v3, v0, v2

    const/16 v2, 0x38

    const-string/jumbo v3, "1956"

    aput-object v3, v0, v2

    const/16 v2, 0x39

    const-string/jumbo v3, "1957"

    aput-object v3, v0, v2

    const/16 v2, 0x3a

    const-string/jumbo v3, "1958"

    aput-object v3, v0, v2

    const/16 v2, 0x3b

    const-string/jumbo v3, "1959"

    aput-object v3, v0, v2

    const/16 v2, 0x3c

    const-string/jumbo v3, "1960"

    aput-object v3, v0, v2

    const/16 v2, 0x3d

    const-string/jumbo v3, "1961"

    aput-object v3, v0, v2

    const/16 v2, 0x3e

    const-string/jumbo v3, "1962"

    aput-object v3, v0, v2

    const/16 v2, 0x3f

    const-string/jumbo v3, "1963"

    aput-object v3, v0, v2

    const/16 v2, 0x40

    const-string/jumbo v3, "1964"

    aput-object v3, v0, v2

    const/16 v2, 0x41

    const-string/jumbo v3, "1965"

    aput-object v3, v0, v2

    const/16 v2, 0x42

    const-string/jumbo v3, "1966"

    aput-object v3, v0, v2

    const/16 v2, 0x43

    const-string/jumbo v3, "1967"

    aput-object v3, v0, v2

    const/16 v2, 0x44

    const-string/jumbo v3, "1968"

    aput-object v3, v0, v2

    const/16 v2, 0x45

    const-string/jumbo v3, "1969"

    aput-object v3, v0, v2

    const/16 v2, 0x46

    const-string/jumbo v3, "1970"

    aput-object v3, v0, v2

    const/16 v2, 0x47

    const-string/jumbo v3, "1971"

    aput-object v3, v0, v2

    const/16 v2, 0x48

    const-string/jumbo v3, "1972"

    aput-object v3, v0, v2

    const/16 v2, 0x49

    const-string/jumbo v3, "1973"

    aput-object v3, v0, v2

    const/16 v2, 0x4a

    const-string/jumbo v3, "1974"

    aput-object v3, v0, v2

    const/16 v2, 0x4b

    const-string/jumbo v3, "1975"

    aput-object v3, v0, v2

    const/16 v2, 0x4c

    const-string/jumbo v3, "1976"

    aput-object v3, v0, v2

    const/16 v2, 0x4d

    const-string/jumbo v3, "1977"

    aput-object v3, v0, v2

    const/16 v2, 0x4e

    const-string/jumbo v3, "1978"

    aput-object v3, v0, v2

    const/16 v2, 0x4f

    const-string/jumbo v3, "1979"

    aput-object v3, v0, v2

    const/16 v2, 0x50

    const-string/jumbo v3, "1980"

    aput-object v3, v0, v2

    const/16 v2, 0x51

    const-string/jumbo v3, "1981"

    aput-object v3, v0, v2

    const/16 v2, 0x52

    const-string/jumbo v3, "1982"

    aput-object v3, v0, v2

    const/16 v2, 0x53

    const-string/jumbo v3, "1983"

    aput-object v3, v0, v2

    const/16 v2, 0x54

    const-string/jumbo v3, "1984"

    aput-object v3, v0, v2

    const/16 v2, 0x55

    const-string/jumbo v3, "1985"

    aput-object v3, v0, v2

    const/16 v2, 0x56

    const-string/jumbo v3, "1986"

    aput-object v3, v0, v2

    const/16 v2, 0x57

    const-string/jumbo v3, "1987"

    aput-object v3, v0, v2

    const/16 v2, 0x58

    const-string/jumbo v3, "1988"

    aput-object v3, v0, v2

    const/16 v2, 0x59

    const-string/jumbo v3, "1989"

    aput-object v3, v0, v2

    const/16 v2, 0x5a

    const-string/jumbo v3, "1990"

    aput-object v3, v0, v2

    const/16 v2, 0x5b

    const-string/jumbo v3, "1991"

    aput-object v3, v0, v2

    const/16 v2, 0x5c

    const-string/jumbo v3, "1992"

    aput-object v3, v0, v2

    const/16 v2, 0x5d

    const-string/jumbo v3, "1993"

    aput-object v3, v0, v2

    const/16 v2, 0x5e

    const-string/jumbo v3, "1994"

    aput-object v3, v0, v2

    const/16 v2, 0x5f

    const-string/jumbo v3, "1995"

    aput-object v3, v0, v2

    const/16 v2, 0x60

    const-string/jumbo v3, "1996"

    aput-object v3, v0, v2

    const/16 v2, 0x61

    const-string/jumbo v3, "1997"

    aput-object v3, v0, v2

    const/16 v2, 0x62

    const-string/jumbo v3, "1998"

    aput-object v3, v0, v2

    const/16 v2, 0x63

    const-string/jumbo v3, "1999"

    aput-object v3, v0, v2

    const/16 v2, 0x64

    const-string/jumbo v3, "2000"

    aput-object v3, v0, v2

    const/16 v2, 0x65

    const-string/jumbo v3, "2001"

    aput-object v3, v0, v2

    const/16 v2, 0x66

    const-string/jumbo v3, "2002"

    aput-object v3, v0, v2

    const/16 v2, 0x67

    const-string/jumbo v3, "2003"

    aput-object v3, v0, v2

    const/16 v2, 0x68

    const-string/jumbo v3, "2004"

    aput-object v3, v0, v2

    const/16 v2, 0x69

    const-string/jumbo v3, "2005"

    aput-object v3, v0, v2

    const/16 v2, 0x6a

    const-string/jumbo v3, "2006"

    aput-object v3, v0, v2

    const/16 v2, 0x6b

    const-string/jumbo v3, "2007"

    aput-object v3, v0, v2

    const/16 v2, 0x6c

    const-string/jumbo v3, "2008"

    aput-object v3, v0, v2

    const/16 v2, 0x6d

    const-string/jumbo v3, "2009"

    aput-object v3, v0, v2

    const/16 v2, 0x6e

    const-string/jumbo v3, "2010"

    aput-object v3, v0, v2

    const/16 v2, 0x6f

    const-string/jumbo v3, "2011"

    aput-object v3, v0, v2

    const/16 v2, 0x70

    const-string/jumbo v3, "2012"

    aput-object v3, v0, v2

    const/16 v2, 0x71

    const-string/jumbo v3, "2013"

    aput-object v3, v0, v2

    const/16 v2, 0x72

    const-string/jumbo v3, "2014"

    aput-object v3, v0, v2

    const/16 v2, 0x73

    const-string/jumbo v3, "2015"

    aput-object v3, v0, v2

    const/16 v2, 0x74

    const-string/jumbo v3, "2016"

    aput-object v3, v0, v2

    const/16 v2, 0x75

    const-string/jumbo v3, "2017"

    aput-object v3, v0, v2

    const/16 v2, 0x76

    const-string/jumbo v3, "2018"

    aput-object v3, v0, v2

    const/16 v2, 0x77

    const-string/jumbo v3, "2019"

    aput-object v3, v0, v2

    const/16 v2, 0x78

    const-string/jumbo v3, "2020"

    aput-object v3, v0, v2

    const/16 v2, 0x79

    const-string/jumbo v3, "2021"

    aput-object v3, v0, v2

    const/16 v2, 0x7a

    const-string/jumbo v3, "2022"

    aput-object v3, v0, v2

    const/16 v2, 0x7b

    const-string/jumbo v3, "2023"

    aput-object v3, v0, v2

    const/16 v2, 0x7c

    const-string/jumbo v3, "2024"

    aput-object v3, v0, v2

    const/16 v2, 0x7d

    const-string/jumbo v3, "2025"

    aput-object v3, v0, v2

    const/16 v2, 0x7e

    const-string/jumbo v3, "2026"

    aput-object v3, v0, v2

    const/16 v2, 0x7f

    const-string/jumbo v3, "2027"

    aput-object v3, v0, v2

    const/16 v2, 0x80

    const-string/jumbo v3, "2028"

    aput-object v3, v0, v2

    const/16 v2, 0x81

    const-string/jumbo v3, "2029"

    aput-object v3, v0, v2

    const/16 v2, 0x82

    const-string/jumbo v3, "2030"

    aput-object v3, v0, v2

    const/16 v2, 0x83

    const-string/jumbo v3, "2031"

    aput-object v3, v0, v2

    const/16 v2, 0x84

    const-string/jumbo v3, "2032"

    aput-object v3, v0, v2

    const/16 v2, 0x85

    const-string/jumbo v3, "2033"

    aput-object v3, v0, v2

    const/16 v2, 0x86

    const-string/jumbo v3, "2034"

    aput-object v3, v0, v2

    const/16 v2, 0x87

    const-string/jumbo v3, "2035"

    aput-object v3, v0, v2

    const/16 v2, 0x88

    const-string/jumbo v3, "2036"

    aput-object v3, v0, v2

    const/16 v2, 0x89

    const-string/jumbo v3, "2037"

    aput-object v3, v0, v2

    const/16 v2, 0x8a

    const-string/jumbo v3, "2038"

    aput-object v3, v0, v2

    const/16 v2, 0x8b

    const-string/jumbo v3, "2039"

    aput-object v3, v0, v2

    const/16 v2, 0x8c

    const-string/jumbo v3, "2040"

    aput-object v3, v0, v2

    const/16 v2, 0x8d

    const-string/jumbo v3, "2041"

    aput-object v3, v0, v2

    const/16 v2, 0x8e

    const-string/jumbo v3, "2042"

    aput-object v3, v0, v2

    const/16 v2, 0x8f

    const-string/jumbo v3, "2043"

    aput-object v3, v0, v2

    const/16 v2, 0x90

    const-string/jumbo v3, "2044"

    aput-object v3, v0, v2

    const/16 v2, 0x91

    const-string/jumbo v3, "2045"

    aput-object v3, v0, v2

    const/16 v2, 0x92

    const-string/jumbo v3, "2046"

    aput-object v3, v0, v2

    const/16 v2, 0x93

    const-string/jumbo v3, "2047"

    aput-object v3, v0, v2

    const/16 v2, 0x94

    const-string/jumbo v3, "2048"

    aput-object v3, v0, v2

    const/16 v2, 0x95

    const-string/jumbo v3, "2049"

    aput-object v3, v0, v2

    const/16 v2, 0x96

    const-string/jumbo v3, "2050"

    aput-object v3, v0, v2

    const/16 v2, 0x97

    const-string/jumbo v3, "2051"

    aput-object v3, v0, v2

    const/16 v2, 0x98

    const-string/jumbo v3, "2052"

    aput-object v3, v0, v2

    const/16 v2, 0x99

    const-string/jumbo v3, "2053"

    aput-object v3, v0, v2

    const/16 v2, 0x9a

    const-string/jumbo v3, "2054"

    aput-object v3, v0, v2

    const/16 v2, 0x9b

    const-string/jumbo v3, "2055"

    aput-object v3, v0, v2

    const/16 v2, 0x9c

    const-string/jumbo v3, "2056"

    aput-object v3, v0, v2

    const/16 v2, 0x9d

    const-string/jumbo v3, "2057"

    aput-object v3, v0, v2

    const/16 v2, 0x9e

    const-string/jumbo v3, "2058"

    aput-object v3, v0, v2

    const/16 v2, 0x9f

    const-string/jumbo v3, "2059"

    aput-object v3, v0, v2

    const/16 v2, 0xa0

    const-string/jumbo v3, "2060"

    aput-object v3, v0, v2

    const/16 v2, 0xa1

    const-string/jumbo v3, "2061"

    aput-object v3, v0, v2

    const/16 v2, 0xa2

    const-string/jumbo v3, "2062"

    aput-object v3, v0, v2

    const/16 v2, 0xa3

    const-string/jumbo v3, "2063"

    aput-object v3, v0, v2

    const/16 v2, 0xa4

    const-string/jumbo v3, "2064"

    aput-object v3, v0, v2

    const/16 v2, 0xa5

    const-string/jumbo v3, "2065"

    aput-object v3, v0, v2

    const/16 v2, 0xa6

    const-string/jumbo v3, "2066"

    aput-object v3, v0, v2

    const/16 v2, 0xa7

    const-string/jumbo v3, "2067"

    aput-object v3, v0, v2

    const/16 v2, 0xa8

    const-string/jumbo v3, "2068"

    aput-object v3, v0, v2

    const/16 v2, 0xa9

    const-string/jumbo v3, "2069"

    aput-object v3, v0, v2

    const/16 v2, 0xaa

    const-string/jumbo v3, "2070"

    aput-object v3, v0, v2

    const/16 v2, 0xab

    const-string/jumbo v3, "2071"

    aput-object v3, v0, v2

    const/16 v2, 0xac

    const-string/jumbo v3, "2072"

    aput-object v3, v0, v2

    const/16 v2, 0xad

    const-string/jumbo v3, "2073"

    aput-object v3, v0, v2

    const/16 v2, 0xae

    const-string/jumbo v3, "2074"

    aput-object v3, v0, v2

    const/16 v2, 0xaf

    const-string/jumbo v3, "2075"

    aput-object v3, v0, v2

    const/16 v2, 0xb0

    const-string/jumbo v3, "2076"

    aput-object v3, v0, v2

    const/16 v2, 0xb1

    const-string/jumbo v3, "2077"

    aput-object v3, v0, v2

    const/16 v2, 0xb2

    const-string/jumbo v3, "2078"

    aput-object v3, v0, v2

    const/16 v2, 0xb3

    const-string/jumbo v3, "2079"

    aput-object v3, v0, v2

    const/16 v2, 0xb4

    const-string/jumbo v3, "2080"

    aput-object v3, v0, v2

    const/16 v2, 0xb5

    const-string/jumbo v3, "2081"

    aput-object v3, v0, v2

    const/16 v2, 0xb6

    const-string/jumbo v3, "2082"

    aput-object v3, v0, v2

    const/16 v2, 0xb7

    const-string/jumbo v3, "2083"

    aput-object v3, v0, v2

    const/16 v2, 0xb8

    const-string/jumbo v3, "2084"

    aput-object v3, v0, v2

    const/16 v2, 0xb9

    const-string/jumbo v3, "2085"

    aput-object v3, v0, v2

    const/16 v2, 0xba

    const-string/jumbo v3, "2086"

    aput-object v3, v0, v2

    const/16 v2, 0xbb

    const-string/jumbo v3, "2087"

    aput-object v3, v0, v2

    const/16 v2, 0xbc

    const-string/jumbo v3, "2088"

    aput-object v3, v0, v2

    const/16 v2, 0xbd

    const-string/jumbo v3, "2089"

    aput-object v3, v0, v2

    const/16 v2, 0xbe

    const-string/jumbo v3, "2090"

    aput-object v3, v0, v2

    const/16 v2, 0xbf

    const-string/jumbo v3, "2091"

    aput-object v3, v0, v2

    const/16 v2, 0xc0

    const-string/jumbo v3, "2092"

    aput-object v3, v0, v2

    const/16 v2, 0xc1

    const-string/jumbo v3, "2093"

    aput-object v3, v0, v2

    const/16 v2, 0xc2

    const-string/jumbo v3, "2094"

    aput-object v3, v0, v2

    const/16 v2, 0xc3

    const-string/jumbo v3, "2095"

    aput-object v3, v0, v2

    const/16 v2, 0xc4

    const-string/jumbo v3, "2096"

    aput-object v3, v0, v2

    const/16 v2, 0xc5

    const-string/jumbo v3, "2097"

    aput-object v3, v0, v2

    const/16 v2, 0xc6

    const-string/jumbo v3, "2098"

    aput-object v3, v0, v2

    const/16 v2, 0xc7

    const-string/jumbo v3, "2099"

    aput-object v3, v0, v2

    const/16 v2, 0xc8

    const-string/jumbo v3, "2100"

    aput-object v3, v0, v2

    const/16 v2, 0xc9

    const-string/jumbo v3, "2101"

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->g:Ljava/util/List;

    .line 97
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->A:Z

    move-object v0, p1

    .line 110
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 111
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->k:Landroid/content/Context;

    .line 112
    invoke-static {p2}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->a(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->w:I

    .line 113
    invoke-static {p3}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->b(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->x:I

    .line 1321
    if-lez p4, :cond_0

    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p4, v0, :cond_1

    :cond_0
    move v0, v1

    .line 114
    :goto_0
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->y:I

    .line 115
    return-void

    .line 1324
    :cond_1
    add-int/lit8 v0, p4, -0x1

    goto :goto_0
.end method

.method private static a(I)I
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 307
    const/16 v0, 0x76c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x835

    if-le p0, v0, :cond_1

    .line 308
    :cond_0
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    :cond_1
    add-int/lit16 v0, p0, -0x76c

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->w:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    .prologue
    const/16 v7, 0x1d

    const/16 v6, 0x1c

    const/4 v5, 0x1

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 28
    .line 8203
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->z:Z

    if-nez v0, :cond_1

    .line 8206
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->w:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->c(I)I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->x:I

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->d(I)I

    move-result v1

    .line 9193
    invoke-static {}, Lcom/alibaba/doraemon/performance/CalendarProxy;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 9194
    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 9195
    const/4 v0, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 9196
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 9197
    const/4 v0, -0x1

    invoke-virtual {v2, v4, v0}, Ljava/util/Calendar;->roll(II)V

    .line 9198
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 8207
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->y:I

    if-lt v1, v0, :cond_0

    .line 8208
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->y:I

    .line 8209
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->y:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setSelectionPosition(I)V

    .line 8211
    :cond_0
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_2

    .line 8212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setData(Ljava/util/List;)V

    .line 8216
    :cond_1
    :goto_0
    return-void

    .line 8213
    :cond_2
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3

    .line 8214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->j:Ljava/util/List;

    const/16 v2, 0x1e

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setData(Ljava/util/List;)V

    goto :goto_0

    .line 8215
    :cond_3
    if-ne v0, v7, :cond_4

    .line 8216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->j:Ljava/util/List;

    invoke-interface {v1, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setData(Ljava/util/List;)V

    goto :goto_0

    .line 8217
    :cond_4
    if-ne v0, v6, :cond_1

    .line 8218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->j:Ljava/util/List;

    invoke-interface {v1, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setData(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static b(I)I
    .locals 1
    .param p0, "month"    # I

    .prologue
    .line 314
    if-lez p0, :cond_0

    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p0, v0, :cond_1

    .line 315
    :cond_0
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, p0, -0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->w:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->x:I

    return p1
.end method

.method private c(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 328
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 331
    :goto_0
    return v0

    :cond_1
    add-int/lit16 v0, p1, 0x76c

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->y:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    return-object v0
.end method

.method private static d(I)I
    .locals 1
    .param p0, "position"    # I

    .prologue
    .line 335
    if-ltz p0, :cond_0

    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_1

    .line 336
    :cond_0
    const/4 v0, 0x0

    .line 338
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, p0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->x:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->z:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->y:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->date_btn_cancel:I

    if-eq v0, v1, :cond_1

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->date_btn_sure:I

    if-ne v0, v1, :cond_2

    .line 291
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$a;

    if-eqz v0, :cond_1

    .line 292
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$a;

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->w:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->c(I)I

    move-result v2

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->x:I

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->d(I)I

    move-result v3

    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->y:I

    .line 7342
    if-ltz v0, :cond_0

    sget-object v4, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 7343
    :cond_0
    const/4 v0, 0x0

    .line 292
    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$a;->onDateSet(III)V

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->dismiss()V

    .line 296
    :cond_2
    return-void

    .line 7345
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x1

    .line 128
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 129
    sget v0, Lcig$h;->dialog_custom_date_picker:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->setContentView(I)V

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcig$k;->SelectDateDialogAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 134
    :cond_0
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 135
    invoke-static {}, Lcms;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->A:Z

    .line 2142
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->A:Z

    if-eqz v0, :cond_8

    .line 2143
    sget v0, Lcig$f;->wheel_view_item3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 2144
    sget v0, Lcig$f;->wheel_view_item1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 2145
    sget v0, Lcig$f;->wheel_view_item2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 2151
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->z:Z

    if-eqz v0, :cond_1

    .line 2152
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setVisibility(I)V

    .line 2155
    :cond_1
    sget v0, Lcig$f;->date_btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->u:Landroid/view/View;

    .line 2156
    sget v0, Lcig$f;->date_btn_sure:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->v:Landroid/view/View;

    .line 2160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->u:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->v:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2163
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setOnWheelItemSelectedListener(Lctf;)V

    .line 2172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setOnWheelItemSelectedListener(Lctf;)V

    .line 2181
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->z:Z

    if-nez v0, :cond_2

    .line 2182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setOnWheelItemSelectedListener(Lctf;)V

    .line 2223
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->k:Landroid/content/Context;

    .line 2224
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2226
    new-instance v0, Lcth;

    invoke-direct {v0}, Lcth;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    .line 2227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    const/4 v1, 0x0

    .line 3071
    iput-boolean v1, v0, Lcth;->a:Z

    .line 2228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    const/4 v1, 0x5

    .line 3079
    iput v1, v0, Lcth;->b:I

    .line 2229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->b:I

    .line 3087
    iput v1, v0, Lcth;->c:I

    .line 2230
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->ui_common_level2_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3103
    iput v1, v0, Lcth;->e:I

    .line 2231
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->c:I

    .line 3111
    iput v1, v0, Lcth;->f:I

    .line 2232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->ui_common_level1_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3127
    iput v1, v0, Lcth;->h:I

    .line 2233
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->d:I

    .line 3135
    iput v1, v0, Lcth;->i:I

    .line 2234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    .line 3231
    iput-boolean v3, v0, Lcth;->u:Z

    .line 2235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    .line 4191
    iput-boolean v3, v0, Lcth;->p:Z

    .line 2236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    .line 5119
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcth;->g:F

    .line 2237
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->A:Z

    if-nez v0, :cond_3

    .line 2238
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$j;->calendar_year:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5143
    iput-object v1, v0, Lcth;->j:Ljava/lang/String;

    .line 2239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->ui_common_level1_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 5151
    iput v1, v0, Lcth;->k:I

    .line 2240
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->d:I

    .line 5159
    iput v1, v0, Lcth;->l:I

    .line 2241
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->f:I

    .line 5167
    iput v1, v0, Lcth;->m:I

    .line 2244
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setData(Ljava/util/List;)V

    .line 2245
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setStyle(Lcth;)V

    .line 2246
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    .line 2247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2250
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    invoke-virtual {v0}, Lcth;->a()Lcth;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->p:Lcth;

    .line 2251
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->A:Z

    if-nez v0, :cond_4

    .line 2252
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->p:Lcth;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$j;->calendar_month:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6143
    iput-object v1, v0, Lcth;->j:Ljava/lang/String;

    .line 2253
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->p:Lcth;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->e:I

    .line 6167
    iput v1, v0, Lcth;->m:I

    .line 2255
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->A:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->i:Ljava/util/List;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setData(Ljava/util/List;)V

    .line 2256
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->p:Lcth;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setStyle(Lcth;)V

    .line 2257
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    .line 2258
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2260
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->z:Z

    if-nez v0, :cond_6

    .line 2262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->o:Lcth;

    invoke-virtual {v0}, Lcth;->a()Lcth;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->q:Lcth;

    .line 2263
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->A:Z

    if-nez v0, :cond_5

    .line 2264
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->q:Lcth;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$j;->calendar_day:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7143
    iput-object v1, v0, Lcth;->j:Ljava/lang/String;

    .line 2265
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->q:Lcth;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->e:I

    .line 7167
    iput v1, v0, Lcth;->m:I

    .line 2267
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setData(Ljava/util/List;)V

    .line 2268
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->q:Lcth;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setStyle(Lcth;)V

    .line 2269
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    .line 2270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2273
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->post(Ljava/lang/Runnable;)Z

    .line 139
    :cond_7
    return-void

    .line 2147
    :cond_8
    sget v0, Lcig$f;->wheel_view_item1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 2148
    sget v0, Lcig$f;->wheel_view_item2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 2149
    sget v0, Lcig$f;->wheel_view_item3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    goto/16 :goto_0

    .line 2255
    :cond_9
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomDatePickerDialog;->h:Ljava/util/List;

    goto/16 :goto_1
.end method
