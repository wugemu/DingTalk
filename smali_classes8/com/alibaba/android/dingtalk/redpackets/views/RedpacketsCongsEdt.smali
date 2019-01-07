.class public Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;
.super Landroid/widget/EditText;
.source "RedpacketsCongsEdt.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->a()V

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
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->a()V

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
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->a()V

    .line 44
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedpacketsCongsEdt;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    return-void
.end method
