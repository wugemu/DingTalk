.class final Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$1;
.super Ljava/lang/Object;
.source "CalendarWidgetHalfDayFragment.java"

# interfaces
.implements Lctf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lctf",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$1;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 83
    .line 1087
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$1;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$1;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;I)I

    .line 1090
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$1;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->f()V

    .line 83
    :cond_0
    return-void
.end method
