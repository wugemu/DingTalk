.class final Lfkj$1;
.super Ljava/lang/Object;
.source "MultiVideoDeviceViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfkj;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfkj;


# direct methods
.method constructor <init>(Lfkj;)V
    .locals 0
    .param p1, "this$0"    # Lfkj;

    .prologue
    .line 57
    iput-object p1, p0, Lfkj$1;->a:Lfkj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lfkj$1;->a:Lfkj;

    .line 1012
    iget-boolean v0, v0, Lfkj;->j:Z

    .line 60
    if-nez v0, :cond_0

    iget-object v0, p0, Lfkj$1;->a:Lfkj;

    .line 2012
    iget-boolean v0, v0, Lfkj;->k:Z

    .line 60
    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lfkj$1;->a:Lfkj;

    invoke-static {v0}, Lfkj;->a(Lfkj;)V

    goto :goto_0
.end method
