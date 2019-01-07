.class public final Lewh$c;
.super Ljava/lang/Object;
.source "TeleConfConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public b:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field final synthetic c:Lewh;


# direct methods
.method private constructor <init>(Lewh;)V
    .locals 0

    .prologue
    .line 1505
    iput-object p1, p0, Lewh$c;->c:Lewh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lewh;B)V
    .locals 0
    .param p1, "x0"    # Lewh;

    .prologue
    .line 1505
    invoke-direct {p0, p1}, Lewh$c;-><init>(Lewh;)V

    return-void
.end method
