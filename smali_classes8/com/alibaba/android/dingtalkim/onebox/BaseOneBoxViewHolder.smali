.class public abstract Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;
.super Ljava/lang/Object;
.source "BaseOneBoxViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Ldvv;

.field public c:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    .local p0, "this":Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;, "Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;->a:Landroid/app/Activity;

    .line 47
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public final a(Ldvv;)V
    .locals 0
    .param p1, "adapter"    # Ldvv;

    .prologue
    .line 57
    .local p0, "this":Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;, "Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;->b:Ldvv;

    .line 58
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation
.end method

.method public final b()Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 50
    .local p0, "this":Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;, "Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder<TT;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;->a()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;->a(Landroid/view/View;)V

    .line 52
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 53
    return-object v0
.end method

.method public abstract b(Ljava/lang/Object;Landroid/view/View;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation
.end method
