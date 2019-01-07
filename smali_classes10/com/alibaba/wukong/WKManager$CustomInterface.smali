.class public abstract Lcom/alibaba/wukong/WKManager$CustomInterface;
.super Ljava/lang/Object;
.source "WKManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/WKManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CustomInterface"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomUA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, ""

    return-object v0
.end method
