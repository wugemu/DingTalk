.class public final Ldff;
.super Ldfa;
.source "SubConversationChatPlugin.java"

# interfaces
.implements Ldfc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ldfa;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final b(Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;)Z
    .locals 1
    .param p1, "addAppContainer"    # Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method
