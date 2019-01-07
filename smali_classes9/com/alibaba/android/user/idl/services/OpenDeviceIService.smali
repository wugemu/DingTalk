.class public interface abstract Lcom/alibaba/android/user/idl/services/OpenDeviceIService;
.super Ljava/lang/Object;
.source "OpenDeviceIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getApTerminalInfo(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lfob;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listUserVisibleDeviceEntry(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lfop;",
            ">;>;)V"
        }
    .end annotation
.end method
