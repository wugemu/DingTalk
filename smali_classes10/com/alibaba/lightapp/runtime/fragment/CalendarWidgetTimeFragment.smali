.class public Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "CalendarWidgetTimeFragment.java"

# interfaces
.implements Lhoq$a;


# instance fields
.field public a:I

.field public b:J

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcth;

.field private o:Lcth;

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 37
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "00"

    aput-object v1, v0, v3

    const-string/jumbo v1, "01"

    aput-object v1, v0, v5

    const-string/jumbo v1, "02"

    aput-object v1, v0, v6

    const-string/jumbo v1, "03"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "04"

    aput-object v2, v0, v1

    const-string/jumbo v1, "05"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string/jumbo v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "23"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->c:Ljava/util/List;

    .line 42
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "00"

    aput-object v1, v0, v3

    const-string/jumbo v1, "01"

    aput-object v1, v0, v5

    const-string/jumbo v1, "02"

    aput-object v1, v0, v6

    const-string/jumbo v1, "03"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "04"

    aput-object v2, v0, v1

    const-string/jumbo v1, "05"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string/jumbo v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "26"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "31"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "32"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "35"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "37"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "38"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "41"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "42"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "43"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "44"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "46"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "51"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "53"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "54"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "56"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "57"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "58"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "59"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->d:Ljava/util/List;

    .line 51
    const-string/jumbo v0, ":"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->e:Ljava/lang/String;

    .line 53
    iput v4, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->f:I

    .line 55
    sget v0, Lcjj;->A:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->g:I

    .line 56
    sget v0, Lcjj;->p:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->h:I

    .line 57
    sget v0, Lcjj;->p:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->i:I

    .line 72
    iput v3, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->p:I

    .line 74
    iput v3, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->q:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->p:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->n:Lcth;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;Lcth;)Lcth;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;
    .param p1, "x1"    # Lcth;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->n:Lcth;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->g:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->q:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;Lcth;)Lcth;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;
    .param p1, "x1"    # Lcth;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->o:Lcth;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->h:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->i:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcth;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->o:Lcth;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->p:I

    return v0
.end method

.method static synthetic m(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->q:I

    return v0
.end method


# virtual methods
.method public final c()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public final d()Ljava/util/Calendar;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 186
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 188
    iget v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->p:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->p:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 189
    const/16 v2, 0xb

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->c:Ljava/util/List;

    iget v3, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->p:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 192
    :cond_0
    iget v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->q:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->q:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 193
    const/16 v2, 0xc

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->d:Ljava/util/List;

    iget v3, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->q:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 196
    :cond_1
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 197
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 199
    return-object v0
.end method

.method final f()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 204
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lhoq$c;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 205
    check-cast v2, Lhoq$c;

    .line 208
    .local v2, "mvpView":Lhoq$c;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 209
    .local v1, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->c:Ljava/util/List;

    iget v4, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->p:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->d:Ljava/util/List;

    iget v5, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->q:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 211
    iget v3, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a:I

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lhoq$c;->a(ILjava/lang/String;)V

    .line 213
    .end local v1    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v2    # "mvpView":Lhoq$c;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1098
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->I:Landroid/view/View;

    sget v1, Lhdn$h;->sw_wheel_view_hour:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 1099
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->I:Landroid/view/View;

    sget v1, Lhdn$h;->sw_wheel_view_minute:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 1104
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$1;-><init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setOnWheelItemSelectedListener(Lctf;)V

    .line 1113
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$2;-><init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setOnWheelItemSelectedListener(Lctf;)V

    .line 1126
    invoke-static {}, Lcom/alibaba/doraemon/performance/CalendarProxy;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 1127
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1129
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->p:I

    .line 1130
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->q:I

    .line 1132
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$3;-><init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1174
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->f()V

    .line 93
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lhdn$i;->fragment_calendar_time:I

    return v0
.end method
