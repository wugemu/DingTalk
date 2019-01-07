.class public Lorg/altbeacon/beacon/service/Callback;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Callback"


# instance fields
.field private intentPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "intentPackageName"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/altbeacon/beacon/service/Callback;->intentPackageName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 78
    return-void
.end method


# virtual methods
.method public call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataName"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 54
    invoke-static {p1, p2, p3}, Lorg/altbeacon/beacon/BeaconIntentProcessor;->process(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method
