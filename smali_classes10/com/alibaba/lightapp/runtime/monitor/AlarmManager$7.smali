.class Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$7;
.super Ljava/lang/Object;
.source "AlarmManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->log(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$7;->this$0:Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 570
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$7;->onDataReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onDataReceived(Ljava/lang/Void;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Void;

    .prologue
    .line 573
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 581
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 577
    return-void
.end method
