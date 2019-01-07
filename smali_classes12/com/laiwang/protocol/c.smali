.class public interface abstract Lcom/laiwang/protocol/c;
.super Ljava/lang/Object;
.source "INotifierService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/c$a;
    }
.end annotation


# virtual methods
.method public abstract onReceive(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
