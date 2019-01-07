.class public final Lcom/alibaba/laiwang/tide/share/business/Callback$Void;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/tide/share/business/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Void"
.end annotation


# static fields
.field static volatile instance:Lcom/alibaba/laiwang/tide/share/business/Callback$Void;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/Callback$Void;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/Callback$Void;-><init>()V

    sput-object v0, Lcom/alibaba/laiwang/tide/share/business/Callback$Void;->instance:Lcom/alibaba/laiwang/tide/share/business/Callback$Void;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static instance()Lcom/alibaba/laiwang/tide/share/business/Callback$Void;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/alibaba/laiwang/tide/share/business/Callback$Void;->instance:Lcom/alibaba/laiwang/tide/share/business/Callback$Void;

    return-object v0
.end method
