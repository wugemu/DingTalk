.class public Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;
.super Landroid/widget/EditText;
.source "RedpacketsCountEdt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->a()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->a()V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;)Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->a:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$a;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->setGravity(I)V

    .line 59
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    return-void
.end method


# virtual methods
.method public getTextCount()D
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .line 94
    .local v0, "count":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 97
    :cond_0
    int-to-double v2, v0

    return-wide v2
.end method

.method public setErrorListener(Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$a;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt;->a:Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCountEdt$a;

    .line 55
    return-void
.end method
