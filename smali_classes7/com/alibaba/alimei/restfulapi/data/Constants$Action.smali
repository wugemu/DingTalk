.class public abstract Lcom/alibaba/alimei/restfulapi/data/Constants$Action;
.super Lcom/alibaba/alimei/restfulapi/data/Constants$FolderAction;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/data/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Action"
.end annotation


# static fields
.field public static final ADD_TAG:I = 0xb

.field public static final CAL_RESPONSE:I = 0x7

.field public static final MOVE:I = 0x4

.field public static final REMOVE_TAG:I = 0xc

.field public static final SENT_STATUS:I = 0xf

.field public static final SET_FAVARITE_FLAG:I = 0x6

.field public static final SET_READ_FLAG:I = 0x5

.field public static final SYNC_TAG:I = 0x6

.field public static final UPDATE_FLAG:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/data/Constants;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/data/Constants;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/data/Constants;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Constants$Action;->this$0:Lcom/alibaba/alimei/restfulapi/data/Constants;

    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/data/Constants$FolderAction;-><init>(Lcom/alibaba/alimei/restfulapi/data/Constants;)V

    return-void
.end method
