.class final Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$2;
.super Ljava/lang/Object;
.source "TeleConfHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;Ljava/lang/String;Z)V

    .line 138
    return-void
.end method
