.class public abstract Lcom/alibaba/alimei/restfulapi/data/Constants$AttendeeStatus;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/data/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AttendeeStatus"
.end annotation


# static fields
.field public static final ACCEPT:Ljava/lang/String; = "ACCEPTED"

.field public static final DECLINE:Ljava/lang/String; = "DECLINED"

.field public static final DELEGATED:Ljava/lang/String; = "DELEGATED"

.field public static final NO_RESPONSE:Ljava/lang/String; = "NEEDS-ACTION"

.field public static final TENTATIVE:Ljava/lang/String; = "TENTATIVE"


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/data/Constants;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/data/Constants;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/data/Constants;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Constants$AttendeeStatus;->this$0:Lcom/alibaba/alimei/restfulapi/data/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
