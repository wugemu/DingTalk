.class public Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "SelectDateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;,
        Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/LinearLayout;

.field private G:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

.field private H:Landroid/widget/RelativeLayout;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

.field private M:J

.field private N:Z

.field private O:Ljava/util/Calendar;

.field private P:I

.field private Q:I

.field private R:Landroid/view/animation/Animation;

.field private S:Landroid/view/animation/Animation;

.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Landroid/view/View$OnClickListener;

.field public f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

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

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:I

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:I

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private r:Landroid/view/View;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/LinearLayout;

.field private x:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    sget v0, Lcig$k;->SelectDateDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;-><init>(Landroid/content/Context;I)V

    .line 146
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 147
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 55
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "00"

    aput-object v1, v0, v6

    const-string/jumbo v1, "01"

    aput-object v1, v0, v3

    const-string/jumbo v1, "02"

    aput-object v1, v0, v7

    const-string/jumbo v1, "03"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string/jumbo v2, "04"

    aput-object v2, v0, v1

    const-string/jumbo v1, "05"

    aput-object v1, v0, v5

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

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->g:Ljava/util/List;

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "00"

    aput-object v1, v0, v6

    const-string/jumbo v1, "10"

    aput-object v1, v0, v3

    const-string/jumbo v1, "20"

    aput-object v1, v0, v7

    const-string/jumbo v1, "30"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string/jumbo v2, "40"

    aput-object v2, v0, v1

    const-string/jumbo v1, "50"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->h:Ljava/util/List;

    .line 63
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->i:I

    .line 65
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "00"

    aput-object v1, v0, v6

    const-string/jumbo v1, "05"

    aput-object v1, v0, v3

    const-string/jumbo v1, "10"

    aput-object v1, v0, v7

    const-string/jumbo v1, "15"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string/jumbo v2, "20"

    aput-object v2, v0, v1

    const-string/jumbo v1, "25"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string/jumbo v2, "30"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "35"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "40"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "55"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->j:Ljava/util/List;

    .line 68
    iput v5, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->k:I

    .line 70
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "00"

    aput-object v1, v0, v6

    const-string/jumbo v1, "01"

    aput-object v1, v0, v3

    const-string/jumbo v1, "02"

    aput-object v1, v0, v7

    const-string/jumbo v1, "03"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string/jumbo v2, "04"

    aput-object v2, v0, v1

    const-string/jumbo v1, "05"

    aput-object v1, v0, v5

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

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->l:Ljava/util/List;

    .line 78
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->m:I

    .line 80
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->n:I

    .line 81
    sget v0, Lcjj;->A:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->o:I

    .line 82
    sget v0, Lcjj;->s:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->p:I

    .line 83
    sget v0, Lcjj;->y:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->q:I

    .line 116
    sget-object v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_TEN:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->L:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->O:Ljava/util/Calendar;

    .line 126
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b:Z

    .line 127
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->c:Z

    .line 151
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interval"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    .prologue
    .line 155
    sget v0, Lcig$k;->SelectDateDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;-><init>(Landroid/content/Context;I)V

    .line 156
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 157
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->L:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    .line 158
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->P:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .param p1, "x1"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->M:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->O:Ljava/util/Calendar;

    return-object v0
.end method

.method private a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 488
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->N:Z

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->I:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->uidic_global_color_c2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 490
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->I:Landroid/widget/TextView;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "%02d"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->P:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string/jumbo v2, ":"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "%02d"

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->Q:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->I:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->uidic_global_color_6_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->I:Landroid/widget/TextView;

    sget v1, Lcig$j;->dt_ding_select_concrete_time:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "viewFrom"    # Landroid/view/View;
    .param p2, "viewTo"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 383
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->S:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 384
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->S:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$4;-><init>(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->S:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 399
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$5;-><init>(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;Landroid/view/View;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 408
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->R:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->R:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 411
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->N:Z

    return p1
.end method

.method private b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 514
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->L:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_ONE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    if-ne v0, v1, :cond_0

    .line 515
    const/4 v0, 0x1

    .line 519
    :goto_0
    return v0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->L:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_FIVE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    if-ne v0, v1, :cond_1

    .line 517
    const/4 v0, 0x5

    goto :goto_0

    .line 519
    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->Q:I

    return p1
.end method

.method private c()J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x0

    .line 534
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->G:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getSelectedDate()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v1

    .line 535
    .local v1, "calendarDay":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 536
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 537
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getYear()I

    move-result v2

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v3

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getDay()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 538
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->N:Z

    if-eqz v2, :cond_0

    .line 539
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->P:I

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 540
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->Q:I

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 546
    :goto_0
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 547
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 548
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    .line 542
    :cond_0
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 543
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 544
    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->c()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(J)V
    .locals 3
    .param p1, "selectedTimeMillis"    # J

    .prologue
    .line 374
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 375
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->M:J

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->N:Z

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->N:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->view_root:I

    if-eq v0, v1, :cond_13

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->ll_today_12:I

    if-ne v0, v1, :cond_2

    .line 221
    const-string/jumbo v0, "ding_deadline_quickselect_noon"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    invoke-static {}, Lcpu;->a()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;->a(J)V

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->dismiss()V

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 226
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->ll_today_18:I

    if-ne v0, v1, :cond_4

    .line 227
    const-string/jumbo v0, "ding_deadline_quickselect_offduty"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    invoke-static {}, Lcpu;->b()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;->a(J)V

    .line 231
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->dismiss()V

    goto :goto_0

    .line 232
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->ll_tomorrow_18:I

    if-ne v0, v1, :cond_6

    .line 233
    const-string/jumbo v0, "ding_deadline_quickselect_tomorrow"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    if-eqz v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    invoke-static {}, Lcpu;->c()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;->a(J)V

    .line 237
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->dismiss()V

    goto :goto_0

    .line 238
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->ll_next_monday_10:I

    if-ne v0, v1, :cond_8

    .line 239
    const-string/jumbo v0, "ding_deadline_quickselect_nextmonday"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    if-eqz v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    invoke-static {}, Lcpu;->d()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;->a(J)V

    .line 243
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->dismiss()V

    goto :goto_0

    .line 244
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->ll_other_time:I

    if-ne v0, v1, :cond_9

    .line 245
    const-string/jumbo v0, "ding_deadline_quickselect_other"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->F:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 247
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->ll_clear_time:I

    if-ne v0, v1, :cond_b

    .line 248
    const-string/jumbo v0, "ding_deadline_quickselect_none"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    if-eqz v0, :cond_a

    .line 250
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;->a()V

    .line 252
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->dismiss()V

    goto/16 :goto_0

    .line 253
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->rl_concrete_time:I

    if-ne v0, v1, :cond_10

    .line 3272
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->dialog_select_date_time:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 3273
    sget v0, Lcig$f;->wheel_view_hour:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 3274
    sget v1, Lcig$f;->wheel_view_minute:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 3275
    sget v2, Lcig$f;->tv_remove_selected_time:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3276
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->c:Z

    if-eqz v3, :cond_d

    sget v3, Lcig$j;->dt_ding_select_deadline_remove:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3277
    sget v3, Lcig$f;->tv_select_time_confirm:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3279
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->O:Ljava/util/Calendar;

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->M:J

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3280
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->O:Ljava/util/Calendar;

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b()I

    move-result v6

    rem-int/2addr v4, v6

    if-eqz v4, :cond_c

    .line 3281
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->O:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b()I

    move-result v6

    invoke-virtual {v4, v10, v6}, Ljava/util/Calendar;->add(II)V

    .line 3283
    :cond_c
    new-instance v4, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$1;-><init>(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3291
    new-instance v4, Lcth;

    invoke-direct {v4}, Lcth;-><init>()V

    .line 4071
    iput-boolean v9, v4, Lcth;->a:Z

    .line 3293
    const/4 v6, 0x3

    .line 4079
    iput v6, v4, Lcth;->b:I

    .line 3294
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->o:I

    .line 4087
    iput v6, v4, Lcth;->c:I

    .line 3295
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcig$c;->uidic_global_color_6_2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 4103
    iput v6, v4, Lcth;->e:I

    .line 3296
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->p:I

    .line 4111
    iput v6, v4, Lcth;->f:I

    .line 3297
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcig$c;->uidic_global_color_c2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 4127
    iput v6, v4, Lcth;->h:I

    .line 3298
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->q:I

    .line 4135
    iput v6, v4, Lcth;->i:I

    .line 3299
    sget v6, Lcjj;->v:I

    .line 4199
    iput v6, v4, Lcth;->q:I

    .line 4207
    iput v8, v4, Lcth;->r:I

    .line 4231
    iput-boolean v9, v4, Lcth;->u:Z

    .line 3303
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->g:Ljava/util/List;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setData(Ljava/util/List;)V

    .line 3304
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setStyle(Lcth;)V

    .line 3305
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;-><init>(Landroid/content/Context;)V

    .line 3306
    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3308
    invoke-virtual {v4}, Lcth;->a()Lcth;

    move-result-object v6

    .line 5199
    iput v8, v6, Lcth;->q:I

    .line 3310
    sget v4, Lcjj;->v:I

    .line 5207
    iput v4, v6, Lcth;->r:I

    .line 5524
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->L:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    sget-object v7, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_ONE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    if-ne v4, v7, :cond_e

    .line 5525
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->l:Ljava/util/List;

    .line 3312
    :goto_2
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setData(Ljava/util/List;)V

    .line 3313
    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setStyle(Lcth;)V

    .line 3314
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;-><init>(Landroid/content/Context;)V

    .line 3315
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3317
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3318
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3319
    new-instance v5, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$2;

    invoke-direct {v5, p0, v4}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$2;-><init>(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3330
    new-instance v2, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$3;

    invoke-direct {v2, p0, v4, v0, v1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$3;-><init>(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3341
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 3276
    :cond_d
    sget v3, Lcig$j;->cancel:I

    goto/16 :goto_1

    .line 5526
    :cond_e
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->L:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    sget-object v7, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_FIVE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    if-ne v4, v7, :cond_f

    .line 5527
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->j:Ljava/util/List;

    goto :goto_2

    .line 5529
    :cond_f
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->h:Ljava/util/List;

    goto :goto_2

    .line 256
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->tv_select_date_cancel:I

    if-ne v0, v1, :cond_12

    .line 257
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a:Z

    if-eqz v0, :cond_11

    .line 258
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->F:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->s:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_0

    .line 260
    :cond_11
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->dismiss()V

    goto/16 :goto_0

    .line 262
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->tv_select_date_confirm:I

    if-ne v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    if-eqz v0, :cond_13

    .line 264
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->c()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;->a(J)V

    .line 266
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->dismiss()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 163
    sget v0, Lcig$h;->dialog_select_date:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->setContentView(I)V

    .line 164
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v3, Lcig$k;->SelectDateDialogAnimation:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 168
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->setCanceledOnTouchOutside(Z)V

    .line 1418
    sget v0, Lcig$f;->view_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->r:Landroid/view/View;

    .line 1420
    sget v0, Lcig$f;->rl_select_fixed_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->s:Landroid/widget/RelativeLayout;

    .line 1421
    sget v0, Lcig$f;->ll_today_12:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->t:Landroid/widget/LinearLayout;

    .line 1422
    sget v0, Lcig$f;->iv_today_12:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->u:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1423
    sget v0, Lcig$f;->tv_today_12:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->v:Landroid/widget/TextView;

    .line 1424
    sget v0, Lcig$f;->ll_today_18:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->w:Landroid/widget/LinearLayout;

    .line 1425
    sget v0, Lcig$f;->iv_today_18:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->x:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1426
    sget v0, Lcig$f;->tv_today_18:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->y:Landroid/widget/TextView;

    .line 1427
    sget v0, Lcig$f;->ll_tomorrow_18:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->z:Landroid/widget/LinearLayout;

    .line 1428
    sget v0, Lcig$f;->tv_tomorrow_18:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->A:Landroid/widget/TextView;

    .line 1429
    sget v0, Lcig$f;->ll_next_monday_10:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->B:Landroid/widget/LinearLayout;

    .line 1430
    sget v0, Lcig$f;->tv_next_monday_10:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->C:Landroid/widget/TextView;

    .line 1431
    sget v0, Lcig$f;->ll_other_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->D:Landroid/widget/LinearLayout;

    .line 1432
    sget v0, Lcig$f;->ll_clear_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->E:Landroid/widget/LinearLayout;

    .line 1434
    sget v0, Lcig$f;->ll_select_custom_date:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->F:Landroid/widget/LinearLayout;

    .line 1435
    sget v0, Lcig$f;->calendar_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->G:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .line 1436
    sget v0, Lcig$f;->rl_concrete_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->H:Landroid/widget/RelativeLayout;

    .line 1437
    sget v0, Lcig$f;->tv_concrete_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->I:Landroid/widget/TextView;

    .line 1438
    sget v0, Lcig$f;->tv_select_date_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->J:Landroid/widget/TextView;

    .line 1439
    sget v0, Lcig$f;->tv_select_date_confirm:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->K:Landroid/widget/TextView;

    .line 1440
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1441
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->J:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1443
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1444
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1452
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1453
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1454
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1455
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1456
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1457
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1459
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1460
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->J:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->e:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->e:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1461
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->K:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1498
    invoke-static {}, Lcpu;->a()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move v0, v1

    .line 1499
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1500
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->u:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_5

    .line 1501
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcig$c;->uidic_global_color_c2:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1500
    :goto_2
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1506
    invoke-static {}, Lcpu;->b()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    .line 1507
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1508
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->x:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v1, :cond_7

    .line 1509
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->uidic_global_color_c2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1508
    :goto_4
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1469
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->G:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setAllowClickDaysOutsideCurrentMonth(Z)V

    .line 1470
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->G:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setShowOtherDates(I)V

    .line 1471
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->G:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a()V

    .line 1472
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->G:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    sget v1, Lcig$j;->icon_left:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setLeftArrowText(I)V

    .line 1473
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->G:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    sget v1, Lcig$j;->icon_right:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setRightArrowText(I)V

    .line 1474
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->G:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    new-instance v1, Lcsn;

    invoke-direct {v1}, Lcsn;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setWeekDayFormatter(Lcsq;)V

    .line 1476
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcig$a;->dialog_alpha_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->R:Landroid/view/animation/Animation;

    .line 1477
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcig$a;->dialog_alpha_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->S:Landroid/view/animation/Animation;

    .line 172
    return-void

    :cond_3
    move-object v0, p0

    .line 1460
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 1498
    goto/16 :goto_1

    .line 1502
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcig$c;->uidic_global_color_6_2:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_6
    move v1, v2

    .line 1506
    goto :goto_3

    .line 1510
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->uidic_global_color_6_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_4
.end method

.method public show()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 176
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->show()V

    .line 177
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->r:Landroid/view/View;

    if-nez v2, :cond_0

    .line 211
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string/jumbo v2, "ding_deadline_quickselect_display"

    invoke-static {v2}, Lcps;->a(Ljava/lang/String;)V

    .line 181
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a:Z

    if-eqz v2, :cond_3

    .line 182
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 183
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2481
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->v:Landroid/widget/TextView;

    invoke-static {}, Lcpu;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcog;->n(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2482
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->y:Landroid/widget/TextView;

    invoke-static {}, Lcpu;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcog;->n(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2483
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->A:Landroid/widget/TextView;

    invoke-static {}, Lcpu;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcog;->n(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2484
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->C:Landroid/widget/TextView;

    invoke-static {}, Lcpu;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcog;->n(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->H:Landroid/widget/RelativeLayout;

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b:Z

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->J:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_2
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->M:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 197
    invoke-static {}, Lcpu;->e()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->M:J

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->O:Ljava/util/Calendar;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->M:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->G:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->O:Ljava/util/Calendar;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->from(Ljava/util/Calendar;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setCurrentDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->G:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->O:Ljava/util/Calendar;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->from(Ljava/util/Calendar;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setSelectedDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 203
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b:Z

    if-eqz v0, :cond_6

    .line 204
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->O:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->P:I

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->O:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->Q:I

    .line 206
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a()V

    goto/16 :goto_0

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 193
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->J:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a:Z

    if-eqz v0, :cond_5

    sget v0, Lcig$j;->dt_common_back:I

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_5
    sget v0, Lcig$j;->cancel:I

    goto :goto_3

    .line 208
    :cond_6
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->P:I

    .line 209
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->Q:I

    goto/16 :goto_0
.end method
