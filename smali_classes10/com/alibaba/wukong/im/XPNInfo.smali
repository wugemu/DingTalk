.class public Lcom/alibaba/wukong/im/XPNInfo;
.super Ljava/lang/Object;
.source "XPNInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x49544f8a96130feaL


# instance fields
.field public alertContent:Ljava/lang/String;

.field public isXpnOff:Ljava/lang/Integer;

.field public msgText:Ljava/lang/String;

.field public params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sound:Ljava/lang/String;

.field public templateId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
