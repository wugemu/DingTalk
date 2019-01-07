.class public Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;
.super Landroid/widget/EditText;
.source "RedpacketsMoneyEdt.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->a()V

    .line 44
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->setGravity(I)V

    .line 48
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getTextDouble()D
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsMoneyEdt;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "text":Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 90
    .local v0, "money":D
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 97
    :cond_0
    :goto_0
    return-wide v0

    .line 94
    :cond_1
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method
