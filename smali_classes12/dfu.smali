.class public final Ldfu;
.super Ljava/lang/Object;
.source "ChatThemeViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldfu$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field public e:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

.field public f:Ldfu$a;

.field public g:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget v0, Lctk$f;->tv_add:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldfu;->a:Landroid/widget/TextView;

    .line 34
    sget v0, Lctk$f;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldfu;->b:Landroid/widget/TextView;

    .line 35
    sget v0, Lctk$f;->tv_selected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldfu;->c:Landroid/widget/TextView;

    .line 36
    sget v0, Lctk$f;->iv_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldfu;->d:Landroid/widget/ImageView;

    .line 38
    iget-object v0, p0, Ldfu;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldfu;->g:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 40
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 81
    .local v0, "id":I
    sget v1, Lctk$f;->iv_image:I

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Ldfu;->f:Ldfu$a;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Ldfu;->f:Ldfu$a;

    iget-object v2, p0, Ldfu;->e:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-interface {v1, v2}, Ldfu$a;->onClick(Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V

    .line 86
    :cond_0
    return-void
.end method
