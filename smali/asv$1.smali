.class final Lasv$1;
.super Ljava/lang/Object;
.source "SystemEventInstance.java"

# interfaces
.implements Laxn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lasv;->getDayEventDelegate()Laxn$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lasv;


# direct methods
.method constructor <init>(Lasv;)V
    .locals 0
    .param p1, "this$0"    # Lasv;

    .prologue
    .line 200
    iput-object p1, p0, Lasv$1;->a:Lasv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 207
    iget-object v0, p0, Lasv$1;->a:Lasv;

    .line 1025
    iget-object v0, v0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 207
    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lasv$1;->a:Lasv;

    .line 2025
    iget-object v0, v0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 208
    invoke-static {p1, v0}, Lavr;->a(Landroid/content/Context;Lcom/alibaba/android/calendar/data/object/SystemEvent;)V

    .line 210
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;JJLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "startTimeMillis"    # J
    .param p4, "endTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    return-void
.end method
