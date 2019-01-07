.class public interface abstract Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder$FinderCallback;
.super Ljava/lang/Object;
.source "AlimeiFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/displayer/AlimeiFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FinderCallback"
.end annotation


# virtual methods
.method public abstract onAccountNotFound()V
.end method

.method public abstract onFoundFinisehd(Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/sdk/model/FolderModel;)V
.end method

.method public abstract onInboxNotFound(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
.end method
