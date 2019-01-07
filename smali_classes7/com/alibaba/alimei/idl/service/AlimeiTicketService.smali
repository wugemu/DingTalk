.class public interface abstract Lcom/alibaba/alimei/idl/service/AlimeiTicketService;
.super Ljava/lang/Object;
.source "AlimeiTicketService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getTicket(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcef;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserTicket(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcef;",
            ">;)V"
        }
    .end annotation
.end method
