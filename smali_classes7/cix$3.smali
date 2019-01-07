.class final Lcix$3;
.super Ljava/lang/Object;
.source "DDServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcix$b;

.field final synthetic b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcix$b;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcix$3;->a:Lcix$b;

    iput-object p2, p0, Lcix$3;->b:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method
