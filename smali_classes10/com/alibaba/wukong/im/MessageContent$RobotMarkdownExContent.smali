.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RobotMarkdownExContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;
    }
.end annotation


# virtual methods
.method public abstract btnDesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;",
            ">;"
        }
    .end annotation
.end method

.method public abstract btnOrientation()Ljava/lang/String;
.end method

.method public abstract hideAvatar()Ljava/lang/String;
.end method

.method public abstract setBtnDesList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent$BtnDes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBtnOrientation(Ljava/lang/String;)V
.end method

.method public abstract setHideAvatar(Ljava/lang/String;)V
.end method

.method public abstract setSingleBtTitle(Ljava/lang/String;)V
.end method

.method public abstract setSingleBtUrl(Ljava/lang/String;)V
.end method

.method public abstract singleBtTitle()Ljava/lang/String;
.end method

.method public abstract singleBtUrl()Ljava/lang/String;
.end method
