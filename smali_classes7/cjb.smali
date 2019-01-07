.class public abstract Lcjb;
.super Landroid/os/Binder;
.source "ServiceManagerNative.java"

# interfaces
.implements Lciy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    sget-object v0, Lcjb;->b:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcjb;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lciy;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    .line 22
    :cond_0
    sget-object v1, Lcjb;->b:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 23
    .local v0, "iInterface":Landroid/os/IInterface;
    instance-of v1, v0, Lciy;

    if-eqz v1, :cond_1

    .line 24
    check-cast v0, Lciy;

    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lcjc;

    .end local v0    # "iInterface":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcjc;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 79
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 31
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v4, v5

    .line 75
    :cond_1
    :goto_0
    return v4

    .line 36
    :cond_2
    packed-switch p1, :pswitch_data_0

    :goto_1
    move v4, v5

    .line 75
    goto :goto_0

    .line 38
    :pswitch_0
    :try_start_0
    sget-object v6, Lciy;->b:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcjb;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 41
    .local v3, "service":Landroid/os/IBinder;
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 46
    :pswitch_1
    sget-object v6, Lciy;->b:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 48
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcjb;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 49
    .restart local v3    # "service":Landroid/os/IBinder;
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 54
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :pswitch_2
    sget-object v6, Lciy;->b:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 57
    .restart local v3    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 58
    .local v0, "allowIsolated":Z
    :goto_2
    invoke-virtual {p0, v2, v3, v0}, Lcjb;->a(Ljava/lang/String;Landroid/os/IBinder;Z)V

    goto :goto_0

    .end local v0    # "allowIsolated":Z
    :cond_3
    move v0, v5

    .line 57
    goto :goto_2

    .line 63
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :pswitch_3
    sget-object v6, Lciy;->b:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcjb;->a()[Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "list":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 66
    array-length v6, v1

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
