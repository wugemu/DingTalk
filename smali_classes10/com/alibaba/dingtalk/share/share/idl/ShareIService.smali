.class public interface abstract Lcom/alibaba/dingtalk/share/share/idl/ShareIService;
.super Ljava/lang/Object;
.source "ShareIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract checkShareApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lgwo;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lgwo;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lgwn;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract parseUrl(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lgwo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract parseUrlFilter(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lgwo;",
            ">;)V"
        }
    .end annotation
.end method
