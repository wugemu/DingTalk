.class final Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$5;
.super Ljava/lang/Object;
.source "CalendarDiurnalView.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .prologue
    .line 954
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$5;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 961
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$5;->a:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;Z)V

    .line 962
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 954
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 954
    return-void
.end method
