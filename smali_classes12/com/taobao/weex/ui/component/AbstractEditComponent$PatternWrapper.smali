.class Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PatternWrapper"
.end annotation


# instance fields
.field private global:Z

.field private matcher:Ljava/util/regex/Pattern;

.field private replace:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->global:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$1;

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->global:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 977
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->global:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->matcher:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    .param p1, "x1"    # Ljava/util/regex/Pattern;

    .prologue
    .line 977
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->matcher:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->replace:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 977
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->replace:Ljava/lang/String;

    return-object p1
.end method
