.class final Lfiu$a;
.super Lfin;
.source "CommonContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfin",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lfiu;


# direct methods
.method public constructor <init>(Lfiu;Landroid/app/Activity;I)V
    .locals 0
    .param p1, "this$0"    # Lfiu;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "chooseType"    # I

    .prologue
    .line 354
    iput-object p1, p0, Lfiu$a;->e:Lfiu;

    .line 355
    invoke-direct {p0, p2, p3}, Lfin;-><init>(Landroid/app/Activity;I)V

    .line 356
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 360
    iget v0, p0, Lfiu$a;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfiu$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 362
    :cond_0
    sget-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->COMMON_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 364
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_COMMON_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_0
.end method
