.class final Lcxq$a;
.super Ldny;
.source "SystemMarkdownMsgViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcxq;


# direct methods
.method private constructor <init>(Lcxq;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcxq$a;->a:Lcxq;

    invoke-direct {p0}, Ldny;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcxq;B)V
    .locals 0
    .param p1, "x0"    # Lcxq;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcxq$a;-><init>(Lcxq;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    iget-object v1, p0, Lcxq$a;->a:Lcxq;

    invoke-static {v1}, Lcxq;->a(Lcxq;)I

    move-result v0

    .line 137
    .local v0, "color":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 138
    invoke-super {p0}, Ldny;->a()I

    move-result v0

    .line 140
    .end local v0    # "color":I
    :cond_0
    return v0
.end method

.method public final b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    iget-object v1, p0, Lcxq$a;->a:Lcxq;

    invoke-static {v1}, Lcxq;->a(Lcxq;)I

    move-result v0

    .line 146
    .local v0, "color":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 147
    invoke-super {p0}, Ldny;->b()I

    move-result v0

    .line 149
    .end local v0    # "color":I
    :cond_0
    return v0
.end method

.method public final c()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    iget-object v1, p0, Lcxq$a;->a:Lcxq;

    invoke-static {v1}, Lcxq;->a(Lcxq;)I

    move-result v0

    .line 155
    .local v0, "color":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 156
    invoke-super {p0}, Ldny;->c()I

    move-result v0

    .line 158
    .end local v0    # "color":I
    :cond_0
    return v0
.end method

.method public final d()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    iget-object v1, p0, Lcxq$a;->a:Lcxq;

    invoke-static {v1}, Lcxq;->a(Lcxq;)I

    move-result v0

    .line 164
    .local v0, "color":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 165
    invoke-super {p0}, Ldny;->d()I

    move-result v0

    .line 167
    .end local v0    # "color":I
    :cond_0
    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Ldny;->e()I

    move-result v0

    return v0
.end method
