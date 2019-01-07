.class final Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$5;
.super Ljava/lang/Object;
.source "ContactHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$5;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 506
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$5;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Landroid/content/Context;J)Ljava/util/List;

    .line 507
    return-void
.end method
