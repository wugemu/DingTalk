.class final Lcom/alibaba/android/calendar/impl/CalendarInterfaceImpl$1;
.super Ljava/lang/Object;
.source "CalendarInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/impl/CalendarInterfaceImpl;->onApplicationCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/impl/CalendarInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/impl/CalendarInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/impl/CalendarInterfaceImpl;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/calendar/impl/CalendarInterfaceImpl$1;->a:Lcom/alibaba/android/calendar/impl/CalendarInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lapd;->a()Lapd;

    move-result-object v0

    invoke-virtual {v0}, Lapd;->b()V

    .line 83
    return-void
.end method
