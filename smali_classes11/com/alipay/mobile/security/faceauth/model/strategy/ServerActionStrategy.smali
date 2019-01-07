.class public Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;
.super Lcom/alipay/mobile/security/faceauth/model/strategy/DefaultActionStrategy;
.source "ServerActionStrategy.java"


# instance fields
.field a:Lcom/alipay/mobile/security/faceauth/model/strategy/ActionStrategy;

.field protected b:I

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "regs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/model/strategy/DefaultActionStrategy;-><init>()V

    .line 12
    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/strategy/GroupActionStrategy;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/model/strategy/GroupActionStrategy;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->a:Lcom/alipay/mobile/security/faceauth/model/strategy/ActionStrategy;

    .line 14
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->b:I

    .line 18
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->c:Ljava/util/List;

    .line 19
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->b:I

    .line 20
    return-void
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "actions"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "isMatch":Z
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    const-string/jumbo v3, "[1-4]{1}((#[1-4]{1})|(,[1-4]{1}))*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 93
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 95
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 97
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :cond_0
    return v0
.end method


# virtual methods
.method protected final b(Ljava/lang/String;)I
    .locals 8
    .param p1, "action"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    .line 1143
    const/4 v3, 0x0

    .line 1144
    if-eqz p1, :cond_0

    .line 1145
    const-string/jumbo v4, "#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1146
    if-lez v4, :cond_0

    .line 1147
    const/4 v3, 0x1

    .line 104
    :cond_0
    if-eqz v3, :cond_1

    .line 106
    const-string/jumbo v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "acts":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    array-length v3, v0

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 110
    .local v1, "index":I
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->getTask(I)I

    move-result v2

    .line 116
    .end local v0    # "acts":[Ljava/lang/String;
    .end local v1    # "index":I
    .local v2, "task":I
    :goto_0
    return v2

    .line 113
    .end local v2    # "task":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->getTask(I)I

    move-result v2

    .restart local v2    # "task":I
    goto :goto_0
.end method

.method public getMotionCount()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->c:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 64
    iget v3, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->b:I

    add-int/lit8 v2, v3, -0x1

    .line 65
    .local v2, "curIndex":I
    if-gez v2, :cond_0

    .line 66
    const/4 v2, 0x0

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->c:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, "actionConfig":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "actions":[Ljava/lang/String;
    array-length v3, v1

    .line 82
    .end local v0    # "actionConfig":Ljava/lang/String;
    .end local v1    # "actions":[Ljava/lang/String;
    .end local v2    # "curIndex":I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public getRandom(I)Ljava/util/List;
    .locals 8
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    const/4 v2, 0x0

    .line 26
    .local v2, "actionIndexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->c:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 28
    iget v6, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->b:I

    iget-object v7, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->c:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 30
    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->c:Ljava/util/List;

    iget v7, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->b:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    .local v1, "actionConfig":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "actionIndexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .restart local v2    # "actionIndexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "actions":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_0

    .line 38
    aget-object v0, v3, v4

    .line 39
    .local v0, "act":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->b(Ljava/lang/String;)I

    move-result v5

    .line 41
    .local v5, "task":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "act":Ljava/lang/String;
    .end local v1    # "actionConfig":Ljava/lang/String;
    .end local v3    # "actions":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "task":I
    :cond_0
    iget v6, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->b:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->b:I

    .line 51
    if-eqz v2, :cond_1

    .line 54
    .end local v2    # "actionIndexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1
    return-object v2

    .restart local v2    # "actionIndexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;->a:Lcom/alipay/mobile/security/faceauth/model/strategy/ActionStrategy;

    invoke-interface {v6, p1}, Lcom/alipay/mobile/security/faceauth/model/strategy/ActionStrategy;->getRandom(I)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method

.method public getTask(I)I
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "task":I
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    return v0

    .line 124
    :pswitch_0
    const/4 v0, 0x7

    .line 125
    goto :goto_0

    .line 127
    :pswitch_1
    const/4 v0, 0x1

    .line 128
    goto :goto_0

    .line 130
    :pswitch_2
    const/4 v0, 0x0

    .line 131
    goto :goto_0

    .line 133
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
