.class final Lfhc$a$1;
.super Ljava/lang/Object;
.source "ContactSubDepartmentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfhc$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfhc$a;


# direct methods
.method constructor <init>(Lfhc$a;)V
    .locals 0
    .param p1, "this$1"    # Lfhc$a;

    .prologue
    .line 294
    iput-object p1, p0, Lfhc$a$1;->a:Lfhc$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 297
    iget-object v1, p0, Lfhc$a$1;->a:Lfhc$a;

    iget-object v1, v1, Lfhc$a;->e:Lfhc;

    invoke-static {v1}, Lfhc;->d(Lfhc;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    sget v1, Lezg$l;->dt_user_common_error_data_fetch_failed:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "im_navigator_from"

    const-string/jumbo v2, "contact_group"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    iget-object v1, p0, Lfhc$a$1;->a:Lfhc$a;

    iget-object v1, v1, Lfhc$a;->e:Lfhc;

    invoke-static {v1}, Lfhc;->a(Lfhc;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v3, p0, Lfhc$a$1;->a:Lfhc$a;

    iget-object v3, v3, Lfhc$a;->e:Lfhc;

    invoke-static {v3}, Lfhc;->d(Lfhc;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method
