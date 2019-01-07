.class final Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$4;
.super Ljava/lang/Object;
.source "ContactHomeFragment.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lcry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$4;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 366
    check-cast p1, Lcry;

    .line 1369
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$4;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->d(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Lfgs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$4;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->d(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Lfgs;

    move-result-object v0

    .line 2070
    iput-object p1, v0, Lfgr;->f:Lcry;

    .line 1374
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$4;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->d(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Lfgs;

    move-result-object v0

    invoke-virtual {v0}, Lfgs;->notifyDataSetChanged()V

    .line 366
    :cond_0
    return-void
.end method
