.class final Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$2;
.super Lbzd;
.source "LocalContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$2;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$2;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->k()V

    .line 239
    return-void
.end method

.method public final onDenied()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public final onNeverAsk()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Lbzd;->onNeverAsk()V

    .line 248
    return-void
.end method
