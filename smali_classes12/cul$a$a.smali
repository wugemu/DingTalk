.class final Lcul$a$a;
.super Ljava/lang/Object;
.source "ConversationLinksAdapter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcul$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lckl;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:J

.field d:Z

.field final synthetic e:Lcul$a;


# direct methods
.method constructor <init>(Lcul$a;)V
    .locals 1
    .param p1, "this$1"    # Lcul$a;

    .prologue
    .line 298
    iput-object p1, p0, Lcul$a$a;->e:Lcul$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcul$a$a;->d:Z

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 333
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    check-cast p1, Lckl;

    .line 1321
    iget-boolean v0, p0, Lcul$a$a;->d:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcul$a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcul$a$a;->e:Lcul$a;

    iget-object v0, v0, Lcul$a;->b:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1324
    :cond_1
    iget-object v0, p0, Lcul$a$a;->a:Ljava/lang/String;

    .line 2055
    iget-object v1, p1, Lckl;->a:Ljava/lang/String;

    .line 1324
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcul$a$a;->b:J

    .line 2059
    iget-wide v2, p1, Lckl;->b:J

    .line 1324
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcul$a$a;->c:J

    .line 2063
    iget-wide v2, p1, Lckl;->c:J

    .line 1324
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcul$a$a;->e:Lcul$a;

    iget-object v0, v0, Lcul$a;->b:Landroid/widget/TextView;

    .line 3039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 1325
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    iget-object v0, p0, Lcul$a$a;->e:Lcul$a;

    iget-object v0, v0, Lcul$a;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
