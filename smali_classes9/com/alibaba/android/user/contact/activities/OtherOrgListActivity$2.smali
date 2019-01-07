.class final Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$2;
.super Ljava/lang/Object;
.source "OtherOrgListActivity.java"

# interfaces
.implements Lfgb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfgb$b",
        "<",
        "Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 86
    check-cast p2, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    .line 1089
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;->a(Lcom/alibaba/android/user/contact/activities/OtherOrgListActivity;ILcom/alibaba/android/user/contact/homepage/ContactHomePageModel;)V

    .line 86
    return-void
.end method
