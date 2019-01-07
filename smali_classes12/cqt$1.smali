.class final Lcqt$1;
.super Ljava/lang/Object;
.source "CommentInputPanelWrapper.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcqt;


# direct methods
.method constructor <init>(Lcqt;)V
    .locals 0
    .param p1, "this$0"    # Lcqt;

    .prologue
    .line 104
    iput-object p1, p0, Lcqt$1;->a:Lcqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Lcqt$1;->a:Lcqt;

    .line 11039
    iget-boolean v0, v0, Lcqt;->h:Z

    .line 139
    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcqt$1;->a:Lcqt;

    .line 12039
    iget v0, v0, Lcqt;->j:I

    .line 140
    iget-object v1, p0, Lcqt$1;->a:Lcqt;

    .line 13039
    iget v1, v1, Lcqt;->k:I

    .line 140
    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 142
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "after"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    if-nez p3, :cond_0

    .line 118
    iget-object v1, p0, Lcqt$1;->a:Lcqt;

    const/4 v2, 0x0

    .line 3039
    iput-boolean v2, v1, Lcqt;->h:Z

    .line 119
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 120
    add-int/lit8 v0, p2, -0x1

    .line 121
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 122
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 123
    iget-object v1, p0, Lcqt$1;->a:Lcqt;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4039
    iput-object v2, v1, Lcqt;->i:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcqt$1;->a:Lcqt;

    iget-object v2, p0, Lcqt$1;->a:Lcqt;

    .line 5039
    iget-object v2, v2, Lcqt;->m:Ljava/util/Map;

    .line 124
    iget-object v3, p0, Lcqt$1;->a:Lcqt;

    .line 6039
    iget-object v3, v3, Lcqt;->i:Ljava/lang/String;

    .line 124
    invoke-interface {v2, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    .line 7039
    iput-boolean v2, v1, Lcqt;->h:Z

    .line 125
    iget-object v1, p0, Lcqt$1;->a:Lcqt;

    .line 8039
    iget-boolean v1, v1, Lcqt;->h:Z

    .line 125
    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcqt$1;->a:Lcqt;

    .line 9039
    iput v0, v1, Lcqt;->j:I

    .line 127
    iget-object v1, p0, Lcqt$1;->a:Lcqt;

    .line 10039
    iput p2, v1, Lcqt;->k:I

    .line 135
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 131
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "text":Ljava/lang/String;
    if-nez p3, :cond_0

    add-int v1, p2, p4

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcqt$1;->a:Lcqt;

    .line 1039
    iget-object v1, v1, Lcqt;->d:Lcqt$b;

    .line 109
    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcqt$1;->a:Lcqt;

    .line 2039
    iget-object v1, v1, Lcqt;->d:Lcqt$b;

    .line 110
    invoke-interface {v1}, Lcqt$b;->a()V

    .line 113
    :cond_0
    return-void
.end method
