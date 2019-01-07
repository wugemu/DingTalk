.class final Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$9;
.super Ljava/lang/Object;
.source "GroupMainOrgBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->finish()V

    .line 302
    return-void
.end method
