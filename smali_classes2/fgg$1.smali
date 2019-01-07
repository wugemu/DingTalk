.class final Lfgg$1;
.super Ljava/lang/Object;
.source "BaseSimpleContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgg;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

.field final synthetic b:Lfgg;


# direct methods
.method constructor <init>(Lfgg;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
    .locals 0
    .param p1, "this$0"    # Lfgg;

    .prologue
    .line 140
    iput-object p1, p0, Lfgg$1;->b:Lfgg;

    iput-object p2, p0, Lfgg$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 143
    iget-object v0, p0, Lfgg$1;->b:Lfgg;

    iget-object v1, p0, Lfgg$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-virtual {v0, v1}, Lfgg;->a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    .line 144
    return-void
.end method
