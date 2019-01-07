.class public abstract Lbyi$a;
.super Ljava/lang/Object;
.source "LiveDynamicSoUtils.java"

# interfaces
.implements Lcjn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbyi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 88
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
