.class final Lctv$11;
.super Ljava/lang/Object;
.source "AbsUserMsgHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lctv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lctv;


# direct methods
.method constructor <init>(Lctv;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lctv;

    .prologue
    .line 508
    iput-object p1, p0, Lctv$11;->b:Lctv;

    iput-object p2, p0, Lctv$11;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 511
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lctv$11;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;)V

    .line 512
    return-void
.end method