.class Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextFormatter"
.end annotation


# instance fields
.field private format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

.field private recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)V
    .locals 0
    .param p1, "format"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    .param p2, "recover"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    .prologue
    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    .line 989
    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    .line 990
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    .param p2, "x1"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;
    .param p3, "x2"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$1;

    .prologue
    .line 983
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;-><init>(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 983
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 983
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 994
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    if-eqz v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2100(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 996
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1005
    .end local p1    # "src":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 998
    .restart local p1    # "src":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->format:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 1001
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "WXInput"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[format] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recover(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "formatted"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    if-eqz v1, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2100(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1012
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1021
    .end local p1    # "formatted":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1014
    .restart local p1    # "formatted":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2200(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->recover:Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;

    invoke-static {v2}, Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;->access$2300(Lcom/taobao/weex/ui/component/AbstractEditComponent$PatternWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 1017
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "WXInput"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[formatted] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
