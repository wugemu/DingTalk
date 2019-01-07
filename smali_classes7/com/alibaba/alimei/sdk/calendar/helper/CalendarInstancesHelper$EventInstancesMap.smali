.class public final Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$EventInstancesMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "CalendarInstancesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventInstancesMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "syncIdKey"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;

    .line 56
    .local v0, "instances":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;

    .end local v0    # "instances":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;
    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;-><init>()V

    .line 58
    .restart local v0    # "instances":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$EventInstancesMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method
