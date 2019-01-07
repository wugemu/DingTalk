.class public abstract Lcom/alibaba/alimei/restfulapi/data/Constants$FolderAction;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/data/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "FolderAction"
.end annotation


# static fields
.field public static final ADD:I = 0x1

.field public static final DELETE:I = 0x3

.field public static final MODIFY:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/data/Constants;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/data/Constants;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/data/Constants;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Constants$FolderAction;->this$0:Lcom/alibaba/alimei/restfulapi/data/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
