.class final Laun$29;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laun;


# direct methods
.method constructor <init>(Laun;)V
    .locals 0
    .param p1, "this$0"    # Laun;

    .prologue
    .line 173
    iput-object p1, p0, Laun$29;->a:Laun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 176
    const-string/jumbo v0, "pref_key_calendar_recycle_and_focus_hint"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 177
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    iget-object v1, p0, Laun$29;->a:Laun;

    .line 1077
    iget-object v1, v1, Laun;->a:Landroid/app/Activity;

    .line 177
    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;I)V

    .line 178
    return-void
.end method
