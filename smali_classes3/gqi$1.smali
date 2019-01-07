.class final Lgqi$1;
.super Ljava/lang/Object;
.source "AtEditTextWrapper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgqi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgqi;


# direct methods
.method constructor <init>(Lgqi;)V
    .locals 0
    .param p1, "this$0"    # Lgqi;

    .prologue
    .line 53
    iput-object p1, p0, Lgqi$1;->a:Lgqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lgqi$1;->a:Lgqi;

    .line 8027
    iget-boolean v0, v0, Lgqi;->a:Z

    .line 85
    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lgqi$1;->a:Lgqi;

    .line 9027
    iget v0, v0, Lgqi;->b:I

    .line 86
    iget-object v1, p0, Lgqi$1;->a:Lgqi;

    .line 10027
    iget v1, v1, Lgqi;->c:I

    .line 86
    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 88
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 64
    if-nez p4, :cond_0

    .line 65
    iget-object v1, p0, Lgqi$1;->a:Lgqi;

    const/4 v2, 0x0

    .line 2027
    iput-boolean v2, v1, Lgqi;->a:Z

    .line 66
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 67
    add-int/lit8 v0, p2, -0x1

    .line 68
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 69
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 70
    iget-object v1, p0, Lgqi$1;->a:Lgqi;

    iget-object v2, p0, Lgqi$1;->a:Lgqi;

    .line 3027
    iget-object v2, v2, Lgqi;->d:Ljava/util/Map;

    .line 70
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    .line 4027
    iput-boolean v2, v1, Lgqi;->a:Z

    .line 71
    iget-object v1, p0, Lgqi$1;->a:Lgqi;

    .line 5027
    iget-boolean v1, v1, Lgqi;->a:Z

    .line 71
    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lgqi$1;->a:Lgqi;

    .line 6027
    iput v0, v1, Lgqi;->b:I

    .line 73
    iget-object v1, p0, Lgqi$1;->a:Lgqi;

    .line 7027
    iput p2, v1, Lgqi;->c:I

    .line 81
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 77
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 56
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "text":Ljava/lang/String;
    if-nez p3, :cond_0

    add-int v1, p2, p4

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lgqi$1;->a:Lgqi;

    .line 1027
    iget-object v1, v1, Lgqi;->f:Lgqi$a;

    .line 58
    invoke-interface {v1}, Lgqi$a;->a()V

    .line 60
    :cond_0
    return-void
.end method
