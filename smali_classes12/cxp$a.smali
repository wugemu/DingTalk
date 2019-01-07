.class final Lcxp$a;
.super Ldny;
.source "SystemMarkdownExMsgViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ldny;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcxp$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcxp$a;I)V
    .locals 0
    .param p0, "x0"    # Lcxp$a;
    .param p1, "x1"    # I

    .prologue
    .line 140
    .line 1145
    iput p1, p0, Lcxp$a;->a:I

    .line 140
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    iget v0, p0, Lcxp$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 151
    invoke-super {p0}, Ldny;->a()I

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcxp$a;->a:I

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    iget v0, p0, Lcxp$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 159
    invoke-super {p0}, Ldny;->a()I

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcxp$a;->a:I

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    iget v0, p0, Lcxp$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 167
    invoke-super {p0}, Ldny;->a()I

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcxp$a;->a:I

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    iget v0, p0, Lcxp$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 175
    invoke-super {p0}, Ldny;->a()I

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcxp$a;->a:I

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Ldny;->e()I

    move-result v0

    return v0
.end method
