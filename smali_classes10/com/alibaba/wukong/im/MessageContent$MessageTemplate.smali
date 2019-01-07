.class public Lcom/alibaba/wukong/im/MessageContent$MessageTemplate;
.super Ljava/lang/Object;
.source "MessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageTemplate"
.end annotation


# static fields
.field public static final ADD_MEMBER:Ljava/lang/String; = "im_add_member"

.field public static final ADD_MEMBER_MARKDOWN:Ljava/lang/String; = "im_add_member_markdown"

.field public static final ADD_MEMBER_MARKDOWN_RECALL:Ljava/lang/String; = "im_add_member_markdown_recall"

.field public static final CHANGE_GROUP_OWNER:Ljava/lang/String; = "im_group_owner_changed"

.field public static final CREATE_CONVERSATION:Ljava/lang/String; = "im_start_chat"

.field public static final CREATE_SECURED_CONVERSATION:Ljava/lang/String; = "im_start_secured_chat"

.field public static final QUIT_CONVERSATION:Ljava/lang/String; = "im_quit_group"

.field public static final REMOVE_MEMBER:Ljava/lang/String; = "im_rm_member"

.field public static final UPDATE_CONVERSATION_TITLE:Ljava/lang/String; = "im_update_group_title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
