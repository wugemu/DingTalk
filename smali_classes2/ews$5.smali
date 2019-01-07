.class final Lews$5;
.super Ljava/lang/Object;
.source "TeleFloatingConfManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lews;->f()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lews;


# direct methods
.method constructor <init>(Lews;)V
    .locals 0
    .param p1, "this$0"    # Lews;

    .prologue
    .line 369
    iput-object p1, p0, Lews$5;->a:Lews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 372
    iget-object v0, p0, Lews$5;->a:Lews;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lews;->a(Lews;Z)V

    .line 373
    iget-object v0, p0, Lews$5;->a:Lews;

    invoke-static {v0}, Lews;->a(Lews;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->b()V

    .line 374
    iget-object v0, p0, Lews$5;->a:Lews;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lews;->a(Lews;Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    .line 375
    return-void
.end method
