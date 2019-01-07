.class final Lfji$1;
.super Ljava/lang/Object;
.source "MultiFriendViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfji;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfji;


# direct methods
.method constructor <init>(Lfji;)V
    .locals 0
    .param p1, "this$0"    # Lfji;

    .prologue
    .line 76
    iput-object p1, p0, Lfji$1;->a:Lfji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lfji$1;->a:Lfji;

    .line 1031
    iget-boolean v0, v0, Lfji;->q:Z

    .line 79
    if-nez v0, :cond_0

    iget-object v0, p0, Lfji$1;->a:Lfji;

    .line 2031
    iget-boolean v0, v0, Lfji;->r:Z

    .line 79
    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lfji$1;->a:Lfji;

    invoke-static {v0}, Lfji;->a(Lfji;)V

    goto :goto_0
.end method
