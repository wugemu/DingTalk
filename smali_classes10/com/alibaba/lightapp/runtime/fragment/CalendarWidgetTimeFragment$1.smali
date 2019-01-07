.class final Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$1;
.super Ljava/lang/Object;
.source "CalendarWidgetTimeFragment.java"

# interfaces
.implements Lctf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;
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
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$1;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 104
    .line 1108
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$1;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;I)I

    .line 1109
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment$1;->a:Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->f()V

    .line 104
    return-void
.end method
