.class public interface abstract Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;
.super Ljava/lang/Object;
.source "VolleyResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/request/VolleyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onProgressChange(JJ)V
.end method

.method public abstract onResponse(ILjava/lang/Object;JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
