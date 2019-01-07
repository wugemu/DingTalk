.class final Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity$3;
.super Ljava/lang/Object;
.source "CategoryContainSessionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryContainSessionsActivity;->finish()V

    .line 177
    return-void
.end method
