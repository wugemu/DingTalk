.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$31;
.super Ljava/lang/Object;
.source "CreateOrgActivityV3.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 2223
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$31;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$31;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v0, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 2227
    const/4 v0, 0x0

    return v0
.end method